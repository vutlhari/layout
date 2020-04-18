/**
*  Merge
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import XCTest
@testable import Layout

@available(iOS, introduced: 11.0)
final class WidthAnchorTests: XCTestCase {
    var container: UIView!
    var viewOne: UIView!
    var viewTwo: UIView!
    var view: UIView!
    
    override func setUp() {
        super.setUp()
        container = UIView()
        viewOne = UIView()
        viewTwo = UIView()
        view = UIView()
    }
    
    override func tearDown() {
        super.tearDown()
        container = nil
        viewOne = nil
        viewTwo = nil
        view = nil
    }
    
    func testWidthAnchorEqualTo() {
        container.add(view) {
            $0.layout {
                $0.width == 20
            }
        }
        
        assertSingleConstraint(constant: 20, relation: .equal)
    }
    
    func testWidthAnchorGreaterThanOrEqualTo() {
        container.add(view) {
            $0.layout {
                $0.width >= 20
            }
        }
        
        assertSingleConstraint(constant: 20, relation: .greaterThanOrEqual)
    }
    
    func testWidthAnchorLessThanOrEqual() {
        container.add(view) {
            $0.layout {
                $0.width <= 20
            }
        }
        
        assertSingleConstraint(constant: 20, relation: .lessThanOrEqual)
    }
    
    func testSafeWidthAnchor() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.width == viewOne.safeWidthAnchor
            }
        }

        let constraints = self.container.constraints

        XCTAssertEqual(constraints.count, 1, "Should have 1 constraint installed")
        XCTAssertEqual(constraints[0].constant, 0, "Should be 0")
        XCTAssertEqual(viewOne.frame.width, 0, "Should be 0")
        XCTAssertEqual(constraints[0].relation, NSLayoutConstraint.Relation.equal, "Should be equal")
    }
    
    fileprivate func assertSingleConstraint(constant: CGFloat, relation: NSLayoutConstraint.Relation) {
        view.layoutIfNeeded()
        
        let constraints = view.constraints
        
        XCTAssertEqual(constraints.count, 1, "Should have 1 constraint installed")
        XCTAssertEqual(constraints[0].constant, constant, "Should be \(constant)")
        XCTAssertEqual(view.frame.width, constant, "Should be \(constant)")
        XCTAssertEqual(constraints[0].relation, relation, "Should be \(relation)")
    }
}
