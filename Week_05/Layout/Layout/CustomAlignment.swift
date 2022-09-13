
import SwiftUI

struct CustomAlignment: View {
    var body: some View {
        VStack(alignment: .customCenter) {
            HStack {
                ScaledImage("Trig")
                ScaledImage("Patterns")
                Text("Learn SwiftUI layout!")
                    .alignmentGuide(.customCenter) { $0[.leading] }
            }
            
            HStack {
                Text("Help others learn it too!")
                ScaledImage("Hearts")
                    .alignmentGuide(.customCenter) { $0[.trailing] }
            }
            
            HStack {
                ScaledImage("Rocket")
                Text("Then let's all make some awesome apps!")
                    .multilineTextAlignment(.center)
                ScaledImage("Party")
            }
        }
        .frame(width: 250, height: 250)
    }
}

extension HorizontalAlignment {
    enum CustomCenter: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[HorizontalAlignment.center]
        }
    }
    static let customCenter = HorizontalAlignment(CustomCenter.self)
}

struct ScaledImage: View {
    let name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
    }
}

struct CustomAlignment_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlignment()
    }
}
