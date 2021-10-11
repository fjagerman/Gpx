import XCTest
import XMLCoder
@testable import Gpx

final class GpxTests: XCTestCase {
    func testPerformance() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let fileManager = FileManager()
        let file = fileManager.homeDirectoryForCurrentUser.appendingPathComponent("Downloads/example.xml", isDirectory: false)
        let data = try Data(contentsOf: file)
        let decoder = XMLDecoder()
        decoder.dateDecodingStrategy = .iso8601
//        measure {
            do {
                let _ =  try decoder.decode(Gpx.self, from: data )
           }
            catch {
                XCTFail("Decoding Gpx failed: \(error)")
            }
//        }
    }

    static var allTests = [
        ("testPerformance", testPerformance),
    ]
}