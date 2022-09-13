
import SwiftUI

struct AlignmentChallenge: View {
    var body: some View {
        List(Razémon.all, id: \.name) { razémon in
            HStack(alignment: .razémon) {
                Image(razémon.name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
                    .alignmentGuide(.razémon) {
                        razémon.eyePosition * $0[.bottom]
                    }
                
                VStack(alignment: .leading, spacing: 15) {
                    Text(razémon.name)
                        .fontWeight(.heavy)
                    
                    Text(razémon.description)
                        .alignmentGuide(.razémon,
                                        computeValue: Razémon.defaultValue
                                        )
                    
                    Text("💎 \(razémon.cost)")
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }
                
            }
        }
    }
}

extension Razémon: AlignmentID {
    static func defaultValue(in context: ViewDimensions) -> CGFloat {
        context[.top]
    }
}

extension VerticalAlignment {
    static let razémon = Self(Razémon.self)
}

struct AlignmentChallenge_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentChallenge()
    }
}
