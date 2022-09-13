import SwiftUI
import SwiftUI

struct Challenge3Axis: View {
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .bottomTrailing) {
                Image("Catground")
                    .resizable()
                .scaledToFit()
                
                Image("Badge")
                    .resizable()
                    .scaledToFit()
                    .frame(width: proxy.size.width / 3)
                    .padding(proxy.size.width / 30)
            }
        }
        .frame(width: 300)
    }
}

struct Challenge3Axis_Previews: PreviewProvider {
    static var previews: some View {
        Challenge3Axis()
    }
}
