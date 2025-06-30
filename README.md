
# 📦 CollectionAlgorithms

A powerful and lightweight Swift SDK that extends Swift's native `Collection` types with a set of generic, reusable, and production-ready algorithms — inspired by the best of C++, Python, and Kotlin.

---

## 🚀 Features

- ✅ 20+ Generic Collection Extensions
- ✅ Pure Swift — No Dependencies
- ✅ Works with Arrays, Sets, Ranges, and other Collections
- ✅ Fully Unit Tested with `XCTest`
- ✅ Easy Integration via Swift Package Manager

---

## 📚 Included Algorithms

### 📊 Statistics
- `average()` – Compute mean
- `median()` – Middle element
- `mode()` – Most frequent elements
- `standardDeviation()` – Population standard deviation
- `sum()` – Total of elements

### 🔍 Search & Query
- `binarySearch(for:)`
- `binarySearchClosest(to:)`
- `lowerBound(of:)` / `upperBound(of:)`
- `kthSmallest(k:)`
- `indexOfMin()` / `indexOfMax()`
- `isSorted()`

### 🔁 Transformation
- `chunked(into:)`
- `windowed(size:)`
- `rotate(by:)`
- `sample(count:)`
- `unique()`
- `permutations()`

### 🧪 Analysis & Grouping
- `frequencies()` – Count of each element
- `partitioned(by:)` – Match / unmatch
- `count(where:)`
- `grouped(by:)`

---

## 🛠 Installation

### Swift Package Manager


Then import where needed:
import CollectionAlgorithms
Or in Xcode:

Go to File > Add Packages

Paste the GitHub URL and select version 1.0.0

✅ Example Usage

import CollectionAlgorithms

let array = [1, 2, 3, 4, 5]

print(array.average()!)       // 3.0
print(array.median()!)        // 3.0
print(array.chunked(into: 2)) // [[1, 2], [3, 4], [5]]
print(array.isSorted())       // true
print(array.binarySearch(for: 4)) // 3
📂 Folder Structure
Sources/
└── CollectionAlgorithms/
    ├── Stats/
    ├── Search/
    ├── Transform/
    ├── Analysis/
    └── Order/

Tests/
└── CollectionAlgorithmsTests/
🧪 Running Tests
To run unit tests:

swift test
Or press ⌘ + U in Xcode.

🛣️ Roadmap
 Core 20+ algorithms

 Combinations, cartesianProduct

 Async sequence extensions

 Swift DocC documentation

 Publish to Swift Package Index

👥 Contributing
Pull requests are welcome! Submit your ideas for additional algorithms or improvements via issues or PRs.

📄 License
MIT © 2025 Bhushan Sangale



Add this to your `Package.swift`:

```swift
.package(url: "https://github.com/SangaleBhushan/CollectionAlgorithms.git", from: "1.0.0")
