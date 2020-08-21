import XCTest
import Dumb
@testable import KPEdit

final class KPEditTests: XCTestCase {
    
    // MARK: DumbStruct String
    
    func testDumbStructString() {
        XCTAssertEqual((DumbStruct() + \.string - "Hello!").string, "Hello!")
    }
    
    func testDumbStructStringLet() {
        let dumb = DumbStruct()
        XCTAssertEqual((dumb + \.string - "Hello!").string, "Hello!")
    }
    
    func testDumbStructStringLetSet() {
        let dumb = DumbStruct()
        
        dumb + \.string - "Hello!"
        
        XCTAssertEqual(dumb.string, "Hello, World!")
    }
    
    func testDumbStructStringVarSet() {
        var dumb = DumbStruct()
        
        dumb + \.string - "Hello!"
        
        XCTAssertEqual(dumb.string, "Hello, World!")
    }
    
    // MARK: DumbClass String
    
    func testDumbClassString() {
        XCTAssertEqual((DumbClass() + \.string - "Hello!").string, "Hello!")
    }
    
    func testDumbClassStringLet() {
        let dumb = DumbClass()
        XCTAssertEqual((dumb + \.string - "Hello!").string, "Hello!")
    }
    
    func testDumbClassStringLetSet() {
        let dumb = DumbClass()
        
        dumb + \.string - "Hello!"
        
        XCTAssertEqual(dumb.string, "Hello!")
    }
    
    func testDumbClassStringVarSet() {
        var dumb = DumbClass()
        
        dumb + \.string - "Hello!"
        
        XCTAssertEqual(dumb.string, "Hello!")
    }
    
    static var allTests = [
        ("testDumbStructString", testDumbStructString),
        ("testDumbStructStringLet", testDumbStructStringLet),
        ("testDumbStructStringLetSet", testDumbStructStringLetSet),
        ("testDumbStructStringVarSet", testDumbStructStringVarSet),
        ("testDumbClassString", testDumbClassString),
        ("testDumbClassStringLet", testDumbClassStringLet),
        ("testDumbClassStringLetSet", testDumbClassStringLetSet),
        ("testDumbClassStringVarSet", testDumbClassStringVarSet),
    ]
}
