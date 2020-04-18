/**
*  Merge
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import UIKit

public protocol LayoutDimension: LayoutAnchor {
    ///Returns a constraint that defines a constant size for the anchor’s size attribute.
    @discardableResult func constraint(equalToConstant c: CGFloat) -> NSLayoutConstraint
    ///Returns a constraint that defines the minimum size for the anchor’s size attribute.
    @discardableResult func constraint(greaterThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint
    ///Returns a constraint that defines the maximum size for the anchor’s size attribute.
    @discardableResult func constraint(lessThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint
    ///Returns a constraint that defines the anchor’s size attribute as equal to the specified size attribute multiplied by a constant plus an offset.
    @discardableResult func constraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint
    ///Returns a constraint that defines the anchor’s size attribute as greater than or equal to the specified anchor multiplied by the constant plus an offset.
    @discardableResult func constraint(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint
    //Returns a constraint that defines the anchor’s size attribute as less than or equal to the specified anchor multiplied by the constant.
    @discardableResult func constraint(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint
}

extension NSLayoutDimension: LayoutDimension {}
