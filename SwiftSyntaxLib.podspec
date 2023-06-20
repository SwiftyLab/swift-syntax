Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftCollections::Spec
  s.module_name = 'SwiftSyntax'
  s.define

  s.test_spec do |ts|
    ts.source_files = "Tests/SwiftSyntaxTest/**/*.swift"
    ts.dependency '_SwiftSyntaxTestSupport', "= #{s.version}"
  end
end
