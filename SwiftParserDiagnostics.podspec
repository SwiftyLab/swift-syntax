Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftSyntax::Spec
  s.define

  s.dependency 'SwiftBasicFormat', "= #{s.version}"
  s.dependency 'SwiftDiagnostics', "= #{s.version}"
  s.dependency 'SwiftParser',      "= #{s.version}"
  s.dependency 'SwiftSyntaxLib',   "= #{s.version}"

  s.test_spec do |ts|
    ts.source_files = "Tests/SwiftParserDiagnosticsTest/**/*.swift"
    ts.dependency 'SwiftDiagnostics', "= #{s.version}"
  end
end
