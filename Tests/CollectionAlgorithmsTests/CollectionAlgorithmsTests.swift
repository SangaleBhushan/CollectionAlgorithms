import XCTest
@testable import CollectionAlgorithms

final class CollectionAlgorithmsTests: XCTestCase {
    func testChunked() {
        XCTAssertEqual([1, 2, 3, 4, 5].chunked(into: 2), [[1, 2], [3, 4], [5]])
    }
    
    func testIsSorted() {
        XCTAssertTrue([1, 2, 3].isSorted)
        XCTAssertFalse([2, 1, 3].isSorted)
    }
    
    func testUnique() {
        XCTAssertEqual([1, 2, 2, 3, 1].unique(), [1, 2, 3])
    }
    
    func testGrouped() {
        let grouped = [1, 2, 3, 4].grouped { $0 % 2 == 0 }
        XCTAssertEqual(grouped[true], [2, 4])
        XCTAssertEqual(grouped[false], [1, 3])
    }
    
    func testWindowed() {
        XCTAssertEqual([1, 2, 3, 4].windowed(size: 2), [[1, 2], [2, 3], [3, 4]])
    }
    
    func testCountWhere() {
        XCTAssertEqual([1, 2, 3, 4].count { $0 % 2 == 0 }, 2)
    }
    
    func testPartitioned() {
        let result = [1, 2, 3, 4].partitioned { $0 % 2 == 0 }
        XCTAssertEqual(result.matching, [2, 4])
        XCTAssertEqual(result.nonMatching, [1, 3])
    }
    
    func testMedian() {
        XCTAssertEqual([1, 3, 2].median(), 2)
        XCTAssertEqual([1, 2, 3, 4].median(), 2.5)
    }
    
    func testMode() {
        XCTAssertEqual([1, 2, 2, 3, 3, 3].mode(), [3])
    }
    func testKthSmallest() {
        let arr = [4, 2, 9, 1, 5]
        XCTAssertEqual(arr.kthSmallest(1), 1)
        XCTAssertEqual(arr.kthSmallest(3), 4)
        XCTAssertNil(arr.kthSmallest(10)) // Out of range
    }
    
    func testBinarySearchClosest() {
        let sorted = [1, 3, 5, 7, 9, 11]
        XCTAssertEqual(sorted.binarySearchClosest(to: 6), 7)
        XCTAssertEqual(sorted.binarySearchClosest(to: 10), 11)
        XCTAssertEqual(sorted.binarySearchClosest(to: 12), 11)
        XCTAssertEqual(sorted.binarySearchClosest(to: 1), 1)
    }
    
    func testFrequencies() {
        let items = ["apple", "banana", "apple", "orange", "banana", "apple"]
        let freq = items.frequencies()
        XCTAssertEqual(freq["apple"], 3)
        XCTAssertEqual(freq["banana"], 2)
        XCTAssertEqual(freq["orange"], 1)
    }
    
    func testStandardDeviation_FloatingPoint() {
        let values: [Double] = [2.0, 4.0, 4.0, 4.0, 5.0, 5.0, 7.0, 9.0]
        let stdDev = values.standardDeviation()
        XCTAssertEqual(stdDev!, 2.0, accuracy: 0.0001)
    }
    
    func testStandardDeviation_Integer() {
        let values = [2, 4, 4, 4, 5, 5, 7, 9]
        let stdDev = values.standardDeviation()
        XCTAssertEqual(stdDev!, 2.0, accuracy: 0.0001)
    }
    
    func testPermutations() {
        let items = [1, 2, 3]
        let perms = items.permutations()
        XCTAssertEqual(perms.count, 6)
        XCTAssertTrue(perms.contains([1, 2, 3]))
        XCTAssertTrue(perms.contains([3, 2, 1]))
    }
    func testBinarySearch() {
        let arr = [1, 3, 5, 7, 9]
        XCTAssertEqual(arr.binarySearch(for: 5), 2)
        XCTAssertNil(arr.binarySearch(for: 4))
    }
    
    func testBounds() {
        let arr = [1, 3, 3, 5, 7]
        XCTAssertEqual(arr.lowerBound(of: 3), 1)
        XCTAssertEqual(arr.upperBound(of: 3), 3)
    }
    
    func testIndexOfMinMax() {
        let arr = [10, 20, 5, 40]
        XCTAssertEqual(arr.indexOfMin(), 2)
        XCTAssertEqual(arr.indexOfMax(), 3)
    }
    
    
    func testRotate() {
        var arr = [1, 2, 3, 4, 5]
        arr.rotate(by: 2)
        XCTAssertEqual(arr, [4, 5, 1, 2, 3])
    }
    
    func testSample() {
        let sample = [1, 2, 3, 4, 5].sample(count: 3)
        XCTAssertEqual(sample.count, 3)
    }
    
    func testSum() {
        XCTAssertEqual([1, 2, 3].sum(), 6)
    }

}
