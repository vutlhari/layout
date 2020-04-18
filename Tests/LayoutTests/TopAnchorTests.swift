/**
*  Merge
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import XCTest
@testable import Layout

@available(iOS, introduced: 11.0)
final class TopAnchorTests: AnchorTestCase {
    func testTopAnchorEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.top == viewOne.topAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .equal)
    }
    
    func testSafeTopAnchorEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.top == viewOne.safeTopAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .equal)
    }
    
    func testTopAnchorGreaterThanOrEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.top >= viewOne.safeTopAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .greaterThanOrEqual)
    }
    
    func testTopAnchorLessThanOrEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.top <= viewOne.safeTopAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .lessThanOrEqual)
    }
}
