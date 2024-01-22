Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftSyntax::Spec
  s.define

  s.dependency 'SwiftSyntaxLib', "= #{s.version}"

  s.test_spec do |ts|
    ts.source_files = "Tests/SwiftIDEUtilsTest/**/*.swift"
    ts.dependency '_SwiftSyntaxTestSupport', "= #{s.version}"
    ts.dependency 'SwiftParser',             "= #{s.version}"
    ts.dependency 'SwiftSyntaxLib',          "= #{s.version}"
  end
end
