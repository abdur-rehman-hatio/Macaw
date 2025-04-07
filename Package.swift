// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "Macaw",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "Macaw", 
            targets: ["Macaw"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/abdur-rehman-hatio/SWXMLHash",
            branch: "v6.0.0"
        )
    ],
    targets: [
        .target(
            name: "Macaw",
            dependencies: ["SWXMLHash"],
            path: "Source"
        ),
        .testTarget(
            name: "MacawTests",
            dependencies: ["Macaw"],
            path: "MacawTests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
