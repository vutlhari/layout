/**
*  Merge
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import XCTest
@testable import Layout

@available(iOS, introduced: 11.0)
class AnchorTestCase: XCTestCase {
    var container: UIView!
    var viewOne: UIView!
    var viewTwo: UIView!
    
    override func setUp() {
        super.setUp()
        container = UIView()
        viewOne = UIView()
        viewTwo = UIView()
    }
    
    override func tearDown() {
        super.tearDown()
        container = nil
        viewOne = nil
        viewTwo = nil
    }
    
    func assertSingleContraint(constant: CGFloat, relation: NSLayoutConstraint.Relation) {
        let constraints = container.constraints
        
        XCTAssertEqual(constraints.count, 1, "Should have 1 active constraint")
        XCTAssertEqual(constraints[0].constant, constant, "Should be \(constant)")
        XCTAssertEqual(constraints[0].relation, relation, "Should be \(relation)")
    }
}
