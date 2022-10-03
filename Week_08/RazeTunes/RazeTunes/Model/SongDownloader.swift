import SwiftUI

class SongDownloader: ObservableObject {
  @Published var downloadLocation: URL?

  private let session: URLSession
  private let sessionConfiguration: URLSessionConfiguration

  init() {
    self.sessionConfiguration = URLSessionConfiguration.default
    self.session = URLSession(configuration: sessionConfiguration)
  }

  func downloadSong(at url: URL) async {
    guard let (downloadURL, response) = try? await session.download(from: url) else {
      print("Error downloading song")
      return
    }

    guard let httpResponse = response as? HTTPURLResponse,
          httpResponse.statusCode == 200
    else {
      print("Invalid response code")
      return
    }

    let fileManager = FileManager.default

    guard let documentsPath = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else {
      print("Song dowload failed")
      return
    }

    let lastPathComponent = url.lastPathComponent
    let destinationURL = documentsPath.appendingPathComponent(lastPathComponent)

    do {
      if fileManager.fileExists(atPath: destinationURL.path) {
        try fileManager.removeItem(at: destinationURL)
      }

      try fileManager.copyItem(at: downloadURL, to: destinationURL)

      await MainActor.run {
        downloadLocation = destinationURL
      }
    } catch {
      print("Failed to store the song.")
    }
  }
}
