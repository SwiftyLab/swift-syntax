Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftCollections::Spec
  s.define

  s.dependency 'SwiftSyntaxLib',            "= #{s.version}"
  s.dependency 'SwiftParser',               "= #{s.version}"
  s.dependency 'SwiftOperators',            "= #{s.version}"
  s.dependency 'SwiftDiagnostics',          "= #{s.version}"
  s.dependency 'SwiftSyntaxMacros',         "= #{s.version}"
  s.dependency 'SwiftSyntaxMacroExpansion', "= #{s.version}"
end
