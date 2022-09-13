
import SwiftUI

struct StacksAlignment: View {
    var body: some View {
        HStack {
            Image("Genre/7")
                .resizable()
                .scaledToFit()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Image("Genre/8")
                .resizable()
                .frame(width: 100.0, height: 100.0)
//                .scaledToFit()
        }
    }
}

struct StacksAlignment_Previews: PreviewProvider {
    static var previews: some View {
        StacksAlignment()
    }
}
