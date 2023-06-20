Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftCollections::Spec
  s.define

  s.dependency 'SwiftSyntaxMacros',                  "= #{s.version}"
  s.dependency 'SwiftCompilerPluginMessageHandling', "= #{s.version}"

  s.test_spec do |ts|
    ts.source_files = "Tests/SwiftCompilerPluginTest/**/*.swift"
  end
end
