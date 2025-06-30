
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

Add this to your `Package.swift`:

```swift
.package(url: "https://github.com/SangaleBhushan/CollectionAlgorithms.git", from: "1.0.0")
