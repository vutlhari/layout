/**
*  Layout
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import SwiftUI

// This will let us more easily loop over an array of values within our SwiftUI code:
@available(iOS 13.0, *)
extension ForEach where Data.Element: Hashable, ID == Data.Element, Content: View {
    init(values: Data, content: @escaping (Data.Element) -> Content) {
        self.init(values, id: \.self, content: content)
    }
}
