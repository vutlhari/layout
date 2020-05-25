/**
*  Layout
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import UIKit

public struct LayoutProperty<T: LayoutAnchor> {
    internal let anchor: T
}

public extension LayoutProperty {
    func equal(to otherAnchor: T, offsetBy constant: CGFloat = 0) {
        anchor.constraint(equalTo: otherAnchor, constant: constant).isActive = true
    }

    func greaterThanOrEqual(to otherAnchor: T, offsetBy constant: CGFloat = 0) {
        anchor.constraint(greaterThanOrEqualTo: otherAnchor, constant: constant).isActive = true
    }

    func lessThanOrEqual(to otherAnchor: T, offsetBy constant: CGFloat = 0) {
        anchor.constraint(lessThanOrEqualTo: otherAnchor, constant: constant).isActive = true
    }
}
