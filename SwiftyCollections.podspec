Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftCollections::Spec
  s.define(false)

  s.default_subspec = 'Collections'
  s.subspec 'Collections' do |ss|
    ss.dependency 'CollectionsLib', "= #{s.version}"
  end

  s.subspec 'DequeModule' do |ss|
    ss.dependency 'DequeModule', "= #{s.version}"
  end

  s.subspec 'OrderedCollections' do |ss|
    ss.dependency 'OrderedCollections', "= #{s.version}"
  end
end
