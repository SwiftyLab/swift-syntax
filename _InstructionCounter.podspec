Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftCollections::Spec
  s.define
  s.public_header_files = "Sources/#{s.module_name}/**/*.h"
end
