/**
*  Merge
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import XCTest
@testable import Layout

@available(iOS, introduced: 11.0)
final class LayoutTests: XCTestCase {
    var container: UIView!
    var label: UILabel!
    var button: UIButton!
    
    override func setUp() {
        super.setUp()
        container = UIView()
        label = UILabel()
        button = UIButton()
        
        container.addSubview(label)
        container.addSubview(button)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func testExample() {
        label.layout {
            $0.top == button.bottomAnchor + 20
            $0.leading == button.leadingAnchor
            $0.width <= container.widthAnchor - 40
        }
    }
}
