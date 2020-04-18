/**
*  Merge
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import XCTest
@testable import Layout

@available(iOS, introduced: 11.0)
final class LeadingAnchorTests: AnchorTestCase {
    func testLeadingAnchorEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.leading == viewOne.leadingAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .equal)
    }
    
    func testSafeLeadingAnchorEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.leading == viewOne.safeLeadingAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .equal)
    }
    
    func testLeadingAnchorGreaterThanOrEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.leading >= viewOne.leadingAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .greaterThanOrEqual)
    }
    
    func testLeadingAnchorLessThanOrEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.leading <= viewOne.leadingAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .lessThanOrEqual)
    }
}
