// swift-tools-version:5.5.0
import PackageDescription
let package = Package(
	name: "GDL90",
	products: [
		.library(
			name: "GDL90",
			targets: ["GDL90"]),
	],
	dependencies: [],
	targets: [
		.binaryTarget(
			name: "RustXcframework",
			path: "RustXcframework.xcframework"
		),
		.target(
			name: "GDL90",
			dependencies: ["RustXcframework"])
	]
)
	