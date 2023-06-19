Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftCollections::Spec
  s.define

  s.test_spec do |ts|
    ts.source_files = "Tests/#{s.name}Tests/**/*.swift"
    ts.dependency '_CollectionsTestSupport', "= #{s.version}"
  end
end
