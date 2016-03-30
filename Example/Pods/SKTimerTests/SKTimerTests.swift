import UIKit
import XCTest
import SKTimer

class Tests: XCTestCase {
    
    var timer: SKTimer!
    
    override func setUp() {
        super.setUp()
        timer = SKTimer()
    }
    
    func testTimerDoesntAutostart() {
        XCTAssertFalse(timer.on)
    }
    
    func testTimerStarts() {
        timer.start(10)
        XCTAssertTrue(timer.on)
    }
    
}
