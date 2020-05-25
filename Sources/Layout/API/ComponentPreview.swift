/**
*  Layout
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import SwiftUI

@available(iOS 13.0, *)
public struct ComponentPreview<Component: View>: View {
    var component: Component
    
    public var body: some View {
        ForEach(values: ColorScheme.allCases) { scheme in
            self.component
                .previewLayout(.sizeThatFits)
                .background(Color(UIColor.systemBackground))
                .colorScheme(scheme)
                .previewDisplayName(
                    "\(scheme.previewName)"
                )
        }
    }
}

public extension UIView {
    @available(iOS 13.0.0, *)
    func previewAsComponent() ->  some View {
        ComponentPreview(component: self.asPreview())
    }
}
