

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
      GeometryReader { proxy in
        HStack {
          Image("Cake VStack")
            .resizable()
            .scaledToFit()
            .frame(width: proxy.size.width * 0.5)
          Text("Reading is dreaming with open eyes.")
            .layoutPriority(1)
          Image("Pancake VStack")
            .resizable()
            .scaledToFit()
        }
      }
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
