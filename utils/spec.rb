require 'json'

module SwiftCollections
  module Spec
    def define(has_files = true)
      podspec_path = caller.find do |trace|
        File.extname(trace.split(":")[0]).eql?('.podspec')
      end.split(":")[0]

      podspec = File.basename(podspec_path, File.extname(podspec_path))
      package = JSON.parse(File.read('package.json'), {object_class: OpenStruct})

      self.name              = podspec
      self.version           = package.version.to_s
      self.homepage          = package.homepage
      self.summary           = package.summary
      self.description       = package.description
      self.license           = { :type => package.license, :file => 'LICENSE.txt' }
      self.documentation_url = "https://swiftpackageindex.com/apple/swift-syntax/#{self.version}/documentation/#{self.module_name.downcase}"
      self.social_media_url  = package.author.url

      self.source            = {
        package.repository.type.to_sym => package.repository.url,
        :tag => self.version
      }

      self.authors           = {
        package.author.name => package.author.email
      }

      self.swift_version             = '5.0'
      self.ios.deployment_target     = '13.0'
      self.macos.deployment_target   = '10.15'
      self.tvos.deployment_target    = '13.0'
      self.watchos.deployment_target = '6.0'
      self.osx.deployment_target     = '10.15'

      if has_files
        self.source_files = "Sources/#{self.module_name}/**/*.*"
      end
    end
  end
end
