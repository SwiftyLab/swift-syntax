Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftCollections::Spec
  s.define

  s.dependency 'SwiftSyntaxLib',     "= #{s.version}"
  s.dependency 'SwiftParser',        "= #{s.version}"
  s.dependency 'SwiftDiagnostics',   "= #{s.version}"
  s.dependency 'SwiftSyntaxBuilder', "= #{s.version}"

  s.test_spec do |ts|
    ts.source_files = "Tests/SwiftSyntaxMacrosTest/**/*.swift"
    ts.dependency 'SwiftParser',                  "= #{s.version}"
    ts.dependency 'SwiftOperators',               "= #{s.version}"
    ts.dependency 'SwiftDiagnostics',             "= #{s.version}"
    ts.dependency 'SwiftSyntaxBuilder',           "= #{s.version}"
    ts.dependency '_SwiftSyntaxTestSupport',      "= #{s.version}"
    ts.dependency 'SwiftSyntaxMacrosTestSupport', "= #{s.version}"
  end
end
