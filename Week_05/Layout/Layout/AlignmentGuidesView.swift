

import SwiftUI

struct AlignmentGuidesView: View {
    var body: some View {
        VStack(alignment: .leading) {
        Image("Frogon")
          .resizable()
          .scaledToFit()
          .frame(width: 60)
//          .alignmentGuide(HorizontalAlignment.center) { $0[.leading] }

        Text("Alignment == 😻!")
          .multilineTextAlignment(.center)
//          .alignmentGuide(VerticalAlignment.center) { _ in 300 }

        Image("Xcode Magic")
          .resizable()
          .scaledToFit()
          .frame(width: 240)
//          .alignmentGuide(VerticalAlignment.center) { $0[.top] - 200}
          .alignmentGuide(.leading) { $0[HorizontalAlignment.center] }
      }
    }
}

struct AlignmentGuidesView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuidesView()
    }
}
