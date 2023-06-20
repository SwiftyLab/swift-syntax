Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftCollections::Spec
  s.define
  s.frameworks = "XCTest"

  s.dependency 'SwiftParser',        "= #{s.version}"
  s.dependency 'SwiftDiagnostics',   "= #{s.version}"
  s.dependency 'SwiftSyntaxMacros', "= #{s.version}"
  s.dependency '_SwiftSyntaxTestSupport', "= #{s.version}"
end
