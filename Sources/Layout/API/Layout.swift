/**
*  Layout
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import UIKit

// MARK: - Operators for LayoutAnchor

/// Plus operator: combine a layout anchor and a constant into a tuple
public func +<T: LayoutAnchor>(lhs: T, rhs: CGFloat) -> (T, CGFloat) {
    return (lhs, rhs)
}

/// Minus operator: combine a layout anchor and a constant into a tuple
public func -<T: LayoutAnchor>(lhs: T, rhs: CGFloat) -> (T, CGFloat) {
    return (lhs, -rhs)
}

/// Equals operator: proxy to equalTo with an offset
public func ==<T: LayoutAnchor>(lhs: LayoutProperty<T>, rhs: (T, CGFloat)) {
    lhs.equal(to: rhs.0, offsetBy: rhs.1)
}

/// Equals operator: proxy to equalTo
public func ==<T: LayoutAnchor>(lhs: LayoutProperty<T>, rhs: T) {
    lhs.equal(to: rhs)
}

/// Greater than or equals operators: proxy to greaterThanOrEqualTo with an offset
public func >=<T: LayoutAnchor>(lhs: LayoutProperty<T>, rhs: (T, CGFloat)) {
    lhs.greaterThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

/// Greater than or equals operators: proxy to greaterThanOrEqualTo
public func >=<T: LayoutAnchor>(lhs: LayoutProperty<T>, rhs: T) {
    lhs.greaterThanOrEqual(to: rhs)
}

/// Less than or equals: proxy to lessThanOrEqualTo  with an offset
public func <=<T: LayoutAnchor>(lhs: LayoutProperty<T>, rhs: (T, CGFloat)) {
    lhs.lessThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

/// Less than or equals: proxy to lessThanOrEqualTo
public func <=<T: LayoutAnchor>(lhs: LayoutProperty<T>, rhs: T) {
    lhs.lessThanOrEqual(to: rhs)
}

// MARK: - Operators for LayoutDimension

/// Plus operator: combine a layout anchor and a constant into a tuple
public func +<T: LayoutDimension>(lhs: T, rhs: CGFloat) -> (T, CGFloat) {
    return (lhs, rhs)
}

/// Minus operator: combine a layout anchor and a constant into a tuple
public func -<T: LayoutDimension>(lhs: T, rhs: CGFloat) -> (T, CGFloat) {
    return (lhs, -rhs)
}

/// Equals operator: proxy to equalTo with an offset
public func ==<T: LayoutDimension>(lhs: LayoutDimensionProperty<T>, rhs: (T, CGFloat)) {
    lhs.equal(to: rhs.0, offsetBy: rhs.1)
}

/// Equals operator: proxy to equalTo
public func ==<T: LayoutDimension>(lhs: LayoutDimensionProperty<T>, rhs: T) {
    lhs.equal(to: rhs)
}

/// Greater than or equals operators: proxy to greaterThanOrEqualTo with an offset
public func >=<T: LayoutDimension>(lhs: LayoutDimensionProperty<T>, rhs: (T, CGFloat)) {
    lhs.greaterThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

/// Greater than or equals operators: proxy to greaterThanOrEqualTo
public func >=<T: LayoutDimension>(lhs: LayoutDimensionProperty<T>, rhs: T) {
    lhs.greaterThanOrEqual(to: rhs)
}

/// Less than or equals: proxy to lessThanOrEqualTo  with an offset
public func <=<T: LayoutDimension>(lhs: LayoutDimensionProperty<T>, rhs: (T, CGFloat)) {
    lhs.lessThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

/// Less than or equals: proxy to lessThanOrEqualTo
public func <=<T: LayoutDimension>(lhs: LayoutDimensionProperty<T>, rhs: T) {
    lhs.lessThanOrEqual(to: rhs)
}

/// Equals operator: proxy to equalToConstant
public func ==<T: LayoutDimension>(lhs: LayoutDimensionProperty<T>, constant: CGFloat) {
    lhs.equal(to: constant)
}

/// Greater than or equals operators: proxy to greaterThanOrEqualToConstant
public func >=<T: LayoutDimension>(lhs: LayoutDimensionProperty<T>, constant: CGFloat) {
    lhs.greaterThanOrEqual(to: constant)
}

/// Less than or equals: proxy to lessThanOrEqualToConstant
public func <=<T: LayoutDimension>(lhs: LayoutDimensionProperty<T>, constant: CGFloat) {
    lhs.lessThanOrEqual(to: constant)
}
