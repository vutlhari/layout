/**
*  Layout
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import UIKit

public class LayoutProxy {
    public lazy var top = property(with: view.topAnchor)
    public lazy var bottom = property(with: view.bottomAnchor)
    public lazy var leading = property(with: view.leadingAnchor)
    public lazy var trailing = property(with: view.trailingAnchor)
    public lazy var left = property(with: view.leftAnchor)
    public lazy var right = property(with: view.rightAnchor)
    public lazy var centerX = property(with: view.centerXAnchor)
    public lazy var centerY = property(with: view.centerYAnchor)
    public lazy var width = property(with: view.widthAnchor)
    public lazy var height = property(with: view.heightAnchor)
    
    private let view: UIView
    
    internal init(view: UIView) {
        self.view = view
    }
    
    private func property<T: LayoutAnchor>(with anchor: T) -> LayoutProperty<T> {
        return LayoutProperty(anchor: anchor)
    }
    
    private func property<T: LayoutDimension>(with dimension: T) -> LayoutDimensionProperty<T> {
        return LayoutDimensionProperty(dimension: dimension)
    }
}
