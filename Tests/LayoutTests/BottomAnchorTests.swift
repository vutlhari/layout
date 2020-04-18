/**
*  Merge
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import XCTest
@testable import Layout

@available(iOS, introduced: 11.0)
final class BottomAnchorTests: AnchorTestCase {
    func testBottomAnchorEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.bottom == viewOne.bottomAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .equal)
    }
    
    func testSafeBottomAnchorEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.bottom == viewOne.safeBottomAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .equal)
    }
    
    func testBottomAnchorGreaterThanOrEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.bottom >= viewOne.bottomAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .greaterThanOrEqual)
    }
    
    func testBottomAnchorLessThanOrEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.bottom <= viewOne.bottomAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .lessThanOrEqual)
    }
}
