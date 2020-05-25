/**
*  Layout
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import UIKit
import SwiftUI

public extension UIView {
    func layout(using closure: (LayoutProxy) -> Void) {
        translatesAutoresizingMaskIntoConstraints = false
        closure(LayoutProxy(view: self))
    }
    
    func pin(to container: UIView) {
        self.layout {
            $0.top == container.topAnchor
            $0.leading == container.leadingAnchor
            $0.trailing == container.trailingAnchor
            $0.bottom == container.bottomAnchor
        }
    }
    
    @discardableResult
    func add<T: UIView>(_ subview: T, then closure: (T) -> Void) -> T {
        addSubview(subview)
        closure(subview)
        return subview
    }
}

public extension UIView {
    @available(iOS 13, *)
    private struct Preview: UIViewRepresentable {
        var view: UIView
        
        func makeUIView(context: Context) -> UIView {
            view
        }
        
        func updateUIView(_ uiView: UIView, context: Context) {
            // No-op
        }
    }
    
    @available(iOS 13, *)
    public func asPreview() -> some View {
        Preview(view: self)
    }
}
