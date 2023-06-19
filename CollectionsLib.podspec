Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftCollections::Spec
  s.module_name = 'Collections'
  s.define

  s.dependency 'DequeModule', "= #{s.version}"
  s.dependency 'OrderedCollections', "= #{s.version}"
end
