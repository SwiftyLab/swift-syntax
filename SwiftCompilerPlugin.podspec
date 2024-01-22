Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftSyntax::Spec
  s.define

  s.dependency 'SwiftCompilerPluginMessageHandling', "= #{s.version}"
  s.dependency 'SwiftSyntaxMacros',                  "= #{s.version}"

  s.test_spec do |ts|
    ts.source_files = "Tests/SwiftCompilerPluginTest/**/*.swift"
    ts.pod_target_xcconfig = {
      'PRODUCT_NAME' => 'SwiftCompilerPluginTest'
    }
  end
end
