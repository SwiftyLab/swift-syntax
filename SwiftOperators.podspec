Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftCollections::Spec
  s.define

  s.dependency 'SwiftSyntaxLib',     "= #{s.version}"
  s.dependency 'SwiftParser',        "= #{s.version}"
  s.dependency 'SwiftDiagnostics',   "= #{s.version}"

  s.test_spec do |ts|
    ts.source_files = "Tests/SwiftOperatorsTest/**/*.swift"
    ts.dependency 'SwiftParser',             "= #{s.version}"
    ts.dependency '_SwiftSyntaxTestSupport', "= #{s.version}"
  end
end
