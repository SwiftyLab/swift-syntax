Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftSyntax::Spec
  s.define
  s.frameworks = "XCTest"

  s.dependency '_SwiftSyntaxTestSupport',   "= #{s.version}"
  s.dependency 'SwiftDiagnostics',          "= #{s.version}"
  s.dependency 'SwiftParser',               "= #{s.version}"
  s.dependency 'SwiftSyntaxMacros',         "= #{s.version}"
  s.dependency 'SwiftSyntaxMacroExpansion', "= #{s.version}"
end
