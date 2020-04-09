/**
*  Merge
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import UIKit

public class LayoutProxy {
    public lazy var top = property(with: view.topAnchor)
    public lazy var bottom = property(with: view.bottomAnchor)
    public lazy var leading = property(with: view.leadingAnchor)
    public lazy var trailing = property(with: view.trailingAnchor)
    public lazy var width = property(with: view.widthAnchor)
    public lazy var height = property(with: view.heightAnchor)
    
    private let view: UIView
    
    internal init(view: UIView) {
        self.view = view
    }
    
    private func property<T: LayoutAnchor>(with anchor: T) -> LayoutProperty<T> {
        return LayoutProperty(anchor: anchor)
    }
}
