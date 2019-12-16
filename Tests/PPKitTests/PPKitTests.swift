import XCTest
@testable import PPKit

final class PPKitTests: XCTestCase {
    let server = PPKitServer(with: URL(string: "http://localhost:8080")!)
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let thing = expectation(description: "fetchy")
        server.fetchStructures { (result) in
            switch result {
            case .success:
                break
            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
            thing.fulfill()
        }
        wait(for: [thing], timeout: 5)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
