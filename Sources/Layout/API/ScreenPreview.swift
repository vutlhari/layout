/**
*  Layout
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import SwiftUI

@available(iOS 13.0, *)
public struct ScreenPreview<Screen: View>: View {
    var devices: [DeviceType]
    var screen: Screen
    
    public var body: some View {
        ForEach(values: devices.compactMap { $0.rawValue }) { device in
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
    
}

public extension UIViewController {
    @available(iOS 13.0.0, *)
    func previewAsScreen(on devices: [DeviceType] = [DeviceType.iPhone11]) ->  some View {
        ScreenPreview(devices: devices, screen: self.asPreview())
    }
}
