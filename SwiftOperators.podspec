Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftSyntax::Spec
  s.define

  s.dependency 'SwiftDiagnostics',   "= #{s.version}"
  s.dependency 'SwiftParser',        "= #{s.version}"
  s.dependency 'SwiftSyntaxLib',     "= #{s.version}"

  s.test_spec do |ts|
    ts.source_files = "Tests/SwiftOperatorsTest/**/*.swift"
    ts.dependency '_SwiftSyntaxTestSupport', "= #{s.version}"
    ts.dependency 'SwiftParser',             "= #{s.version}"
  end
end
