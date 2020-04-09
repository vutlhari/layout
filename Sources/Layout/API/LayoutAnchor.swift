/**
*  Merge
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import UIKit

public protocol LayoutAnchor {
    /// Returns a constraint that defines one item’s attribute as equal to another item’s attribute plus a constant offset.
    func constraint(equalTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
    /// Returns a constraint that defines one item’s attribute as greater than or equal to another item’s attribute plus a constant offset.
    func constraint(greaterThanOrEqualTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
    /// Returns a constraint that defines one item’s attribute as less than or equal to another item’s attribute plus a constant offset.
    func constraint(lessThanOrEqualTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
}

extension NSLayoutAnchor: LayoutAnchor {}
