import PackageDescription

let package = Package(
  name: "Forms",
  dependencies: [
    .Package(url: "https://github.com/vapor/validation-provider.git", majorVersion: 0),
    .Package(url: "https://github.com/vapor/leaf-provider.git", Version(1,0,0, prereleaseIdentifiers: ["beta"])),
    .Package(url: "https://github.com/vapor/fluent-provider.git", majorVersion: 1),
  ]
)
