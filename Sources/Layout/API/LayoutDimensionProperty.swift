/**
*  Merge
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import UIKit

public struct LayoutDimensionProperty<T: LayoutDimension> {
    internal let dimension: T
}

public extension LayoutDimensionProperty {
    func equal(to constant: CGFloat = 0) {
        dimension.constraint(equalToConstant: constant).isActive = true
    }
    
    func equal(to otherDimension: T, offsetBy constant: CGFloat = 0) {
        dimension.constraint(equalTo: otherDimension as! NSLayoutDimension, multiplier: 1.0, constant: constant).isActive = true
    }
    
    func greaterThanOrEqual(to constant: CGFloat = 0) {
        dimension.constraint(greaterThanOrEqualToConstant: constant).isActive = true
    }
    
    func greaterThanOrEqual(to otherDimension: T, offsetBy constant: CGFloat = 0) {
        dimension.constraint(greaterThanOrEqualTo: otherDimension as! NSLayoutDimension, multiplier: 1.0, constant: constant).isActive = true
    }
    
    func lessThanOrEqual(to constant: CGFloat = 0) {
        dimension.constraint(lessThanOrEqualToConstant: constant).isActive = true
    }
    
    func lessThanOrEqual(to otherDimension: T, offsetBy constant: CGFloat = 0) {
        dimension.constraint(lessThanOrEqualTo:  otherDimension as! NSLayoutDimension, multiplier: 1.0, constant: constant).isActive = true
    }
}
