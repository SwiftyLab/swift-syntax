Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftSyntax::Spec
  s.define

  s.dependency 'SwiftSyntaxLib', "= #{s.version}"

  s.test_spec do |ts|
    ts.source_files = "Tests/SwiftBasicFormatTest/**/*.swift"
    ts.dependency '_SwiftSyntaxTestSupport', "= #{s.version}"
    ts.dependency 'SwiftSyntaxBuilder',      "= #{s.version}"
  end
end
