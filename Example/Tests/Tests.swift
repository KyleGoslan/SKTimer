import UIKit
import XCTest
import SKTimer

class Tests: XCTestCase {
    
    var timer: SKTimer!
    
    override func setUp() {
        super.setUp()
        timer = SKTimer()
    }
    

    func testExample() {
        XCTAssertFalse(timer.on)
    }
    
}
