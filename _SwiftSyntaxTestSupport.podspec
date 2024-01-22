Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftSyntax::Spec
  s.define
  s.frameworks = "XCTest"

  s.dependency 'SwiftBasicFormat',   "= #{s.version}"
  s.dependency 'SwiftSyntaxLib',     "= #{s.version}"
  s.dependency 'SwiftSyntaxBuilder', "= #{s.version}"

  s.test_spec do |ts|
    ts.source_files = "Tests/SwiftSyntaxTestSupportTest/**/*.swift"
    ts.dependency 'SwiftParser', "= #{s.version}"
  end
end
