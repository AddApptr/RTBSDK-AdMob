// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RTBSDK-AdMob",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "RTB_GraviteRTBAdMobMediationAdapter",
            targets: ["RTB_GraviteRTBAdMobMediationAdapter"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AddApptr/RTBSDK.git", exact: "1.11.1"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", "13.3.0"..<"13.4.0"),
    ],
    targets: [
        .target(
            name: "RTB_GraviteRTBAdMobMediationAdapter",
            dependencies: [
                .product(name: "RTBSDK", package: "RTBSDK"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                "GraviteRTBAdMobMediationAdapter",
            ],
            path: "./Sources/GraviteRTBAdMobMediationAdapter"
        ),

        // Mark: Binary Targets
        .binaryTarget(
            name: "GraviteRTBAdMobMediationAdapter",
            url: "https://gravite-sdk-releases.s3.eu-central-1.amazonaws.com/rtbsdk/ios/spm/1.11.1/GraviteRTBAdMobMediationAdapter.zip",
            checksum: "a6e9e8bbda5014662530c59c1d8ffb7d9257619db13a78219b032eb19805da60"
        ),
    ]
)
