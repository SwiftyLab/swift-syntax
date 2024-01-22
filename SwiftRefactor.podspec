Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftSyntax::Spec
  s.define

  s.dependency 'SwiftBasicFormat',   "= #{s.version}"
  s.dependency 'SwiftParser',        "= #{s.version}"
  s.dependency 'SwiftSyntaxLib',     "= #{s.version}"
  s.dependency 'SwiftSyntaxBuilder', "= #{s.version}"

  s.test_spec do |ts|
    ts.source_files = "Tests/SwiftRefactorTest/**/*.swift"
    ts.dependency '_SwiftSyntaxTestSupport', "= #{s.version}"
  end
end
