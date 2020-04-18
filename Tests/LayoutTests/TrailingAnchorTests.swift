/**
*  Merge
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import XCTest
@testable import Layout

@available(iOS, introduced: 11.0)
final class TrailingAnchorTests: AnchorTestCase {
    func testTrailingAnchorEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.trailing == viewOne.trailingAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .equal)
    }
    
    func testSafeTrailingAnchorEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.trailing == viewOne.safeTrailingAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .equal)
    }
    
    func testTrailingAnchorGreaterThanOrEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.trailing >= viewOne.trailingAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .greaterThanOrEqual)
    }
    
    func testTrailingAnchorLessThanOrEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.trailing <= viewOne.trailingAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .lessThanOrEqual)
    }
}
