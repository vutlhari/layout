/**
*  Merge
*  Copyright © IntelleQ Stuff 2020
*  MIT license, see LICENSE file for details
*/

import XCTest
@testable import Layout

@available(iOS, introduced: 11.0)
final class CenterAnchorTests: AnchorTestCase {
    func testCenterXAnchorEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.centerX == viewOne.centerXAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .equal)
    }
    
    func testSafeCenterXAnchorEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.centerX == viewOne.safeCenterXAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .equal)
    }
    
    func testCenterYAnchorEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.centerY == viewOne.centerYAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .equal)
    }
    
    func testSafeCenterYAnchorEqualTo() {
        container.addSubview(viewOne)
        container.add(viewTwo) {
            $0.layout {
                $0.centerY == viewOne.centerYAnchor + 10
            }
        }
        
        assertSingleContraint(constant: 10, relation: .equal)
    }
}
