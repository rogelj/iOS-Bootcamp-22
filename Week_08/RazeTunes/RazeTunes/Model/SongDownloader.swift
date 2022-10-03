import SwiftUI

class SongDownloader: ObservableObject {
  enum SongDownloadError: Error {
    case documentDirectoryError
    case failedToStoreSong
    case invalidResponse
  }

  @Published var downloadLocation: URL?

  private let session: URLSession
  private let sessionConfiguration: URLSessionConfiguration

  init() {
    self.sessionConfiguration = URLSessionConfiguration.default
    self.session = URLSession(configuration: sessionConfiguration)
  }

  // MARK: Functions
  func downloadSong(at url: URL) async throws {
    let (downloadURL, response) = try await session.download(from: url)

    guard let httpResponse = response as? HTTPURLResponse,
          httpResponse.statusCode == 200
    else {
      throw SongDownloadError.invalidResponse
    }

    let fileManager = FileManager.default

    guard let documentsPath = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else {
      throw SongDownloadError.documentDirectoryError
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
      throw SongDownloadError.failedToStoreSong
    }
  }
}
