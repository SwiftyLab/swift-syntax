Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftCollections::Spec
  s.define

  s.frameworks = "XCTest"
  s.test_spec do |ts|
    ts.source_files = "Tests/CollectionsTestSupportTests/**/*.swift"
  end
end
