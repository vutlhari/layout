/**
*  Merge
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import XCTest
@testable import Layout

@available(iOS, introduced: 11.0)
final class LeftAnchorTests: AnchorTestCase {
    func testLeftAnchorEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.left == viewOne.leftAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .equal)
    }
    
    func testSafeLeftAnchorEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.left == viewOne.safeLeftAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .equal)
    }
    
    func testLeftAnchorGreaterThanOrEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.left >= viewOne.leftAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .greaterThanOrEqual)
    }
    
    func testLeftAnchorLessThanOrEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.left <= viewOne.leftAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .lessThanOrEqual)
    }
}
