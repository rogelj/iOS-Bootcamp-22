import SwiftUI
import UIKit

// TODO: - Add UIBlurEffect!
public extension UIBlurEffect{
    struct View {
        let blurStyle: Style
    }
}

// MARK: - UIViewRepresentable
extension UIBlurEffect.View: UIViewRepresentable {
    public func makeUIView(context: Context) -> UIVisualEffectView {
        UIVisualEffectView(effect: UIBlurEffect(style: blurStyle))
    }
    
    public func updateUIView(_ uiView: UIVisualEffectView, context: Context) { }
}


