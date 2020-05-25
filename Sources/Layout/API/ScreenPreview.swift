/**
*  Layout
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import SwiftUI

@available(iOS 13.0, *)
public struct ScreenPreview<Screen: View>: View {
    var screen: Screen
    
    public var body: some View {
        ForEach(values: deviceNames) { device in
            ForEach(values: ColorScheme.allCases) { scheme in
                NavigationView {
                    self.screen
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                }
                .previewDevice(PreviewDevice(rawValue: device))
                .colorScheme(scheme)
                .previewDisplayName("\(scheme.previewName): \(device)")
                .navigationViewStyle(StackNavigationViewStyle())
            }
        }
    }
    
    private var deviceNames: [String] {
        [
            "iPhone 8",
            "iPhone 11",
            "iPhone 11 Pro Max",
            "iPad (7th generation)",
            "iPad Pro (12.9-inch) (4th generation)"
        ]
    }
}

public extension UIViewController {
    @available(iOS 13.0.0, *)
    func previewAsScreen() ->  some View {
        ScreenPreview(screen: self.asPreview())
    }
}
