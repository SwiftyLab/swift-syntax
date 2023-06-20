Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftCollections::Spec
  s.define

  s.dependency 'SwiftSyntaxLib',    "= #{s.version}"
  s.dependency 'SwiftSyntaxMacros', "= #{s.version}"
end
