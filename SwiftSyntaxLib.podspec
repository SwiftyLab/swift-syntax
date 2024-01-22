Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftSyntax::Spec
  s.module_name = 'SwiftSyntax'
  s.define
  s.dependency 'SwiftSyntax509', "= #{s.version}"

  s.test_spec do |ts|
    ts.source_files = "Tests/SwiftSyntaxTest/**/*.swift"
    ts.dependency '_SwiftSyntaxTestSupport', "= #{s.version}"
    ts.dependency 'SwiftSyntaxBuilder',      "= #{s.version}"
  end
end
