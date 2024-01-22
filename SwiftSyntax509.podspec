Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftSyntax::Spec
  s.define
end
