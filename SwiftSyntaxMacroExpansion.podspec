Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftSyntax::Spec
  s.define

  s.dependency 'SwiftSyntaxLib',     "= #{s.version}"
  s.dependency 'SwiftSyntaxBuilder', "= #{s.version}"
  s.dependency 'SwiftSyntaxMacros',  "= #{s.version}"
  s.dependency 'SwiftDiagnostics',   "= #{s.version}"
  s.dependency 'SwiftOperators',     "= #{s.version}"

  s.test_spec do |ts|
    ts.source_files = "Tests/SwiftSyntaxMacroExpansionTest/**/*.swift"
    ts.dependency 'SwiftSyntaxLib',               "= #{s.version}"
    ts.dependency '_SwiftSyntaxTestSupport',      "= #{s.version}"
    ts.dependency 'SwiftDiagnostics',             "= #{s.version}"
    ts.dependency 'SwiftOperators',               "= #{s.version}"
    ts.dependency 'SwiftParser',                  "= #{s.version}"
    ts.dependency 'SwiftSyntaxBuilder',           "= #{s.version}"
    ts.dependency 'SwiftSyntaxMacros',            "= #{s.version}"
    ts.dependency 'SwiftSyntaxMacrosTestSupport', "= #{s.version}"
  end
end
