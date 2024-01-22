Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend SwiftSyntax::Spec
  s.define(false)

  s.default_subspec = 'Lib'
  s.subspec 'Lib' do |ss|
    ss.dependency 'SwiftSyntaxLib', "= #{s.version}"
  end

  s.subspec 'BasicFormat' do |ss|
    ss.dependency 'SwiftBasicFormat', "= #{s.version}"
  end

  s.subspec 'CompilerPlugin' do |ss|
    ss.dependency 'SwiftCompilerPlugin', "= #{s.version}"
  end

  s.subspec 'CompilerPluginMessageHandling' do |ss|
    ss.dependency 'SwiftCompilerPluginMessageHandling', "= #{s.version}"
  end

  s.subspec 'Diagnostics' do |ss|
    ss.dependency 'SwiftDiagnostics', "= #{s.version}"
  end

  s.subspec 'IDEUtils' do |ss|
    ss.dependency 'SwiftIDEUtils', "= #{s.version}"
  end

  s.subspec 'Operators' do |ss|
    ss.dependency 'SwiftOperators', "= #{s.version}"
  end

  s.subspec 'Parser' do |ss|
    ss.dependency 'SwiftParser', "= #{s.version}"
  end

  s.subspec 'ParserDiagnostics' do |ss|
    ss.dependency 'SwiftParserDiagnostics', "= #{s.version}"
  end

  s.subspec 'Refactor' do |ss|
    ss.dependency 'SwiftRefactor', "= #{s.version}"
  end

  s.subspec 'Builder' do |ss|
    ss.dependency 'SwiftSyntaxBuilder', "= #{s.version}"
  end

  s.subspec 'Macros' do |ss|
    ss.dependency 'SwiftSyntaxMacros', "= #{s.version}"
  end

  s.subspec 'MacroExpansion' do |ss|
    ss.dependency 'SwiftSyntaxMacroExpansion', "= #{s.version}"
  end

  s.subspec 'MacrosTestSupport' do |ss|
    ss.dependency 'SwiftSyntaxMacrosTestSupport', "= #{s.version}"
  end

  s.test_spec 'PerformanceTest' do |ts|
    ts.source_files = "Tests/PerformanceTest/**/*.swift"
    ts.dependency '_InstructionCounter', "= #{s.version}"
    ts.dependency 'SwiftSyntax/IDEUtils', "= #{s.version}"
    ts.dependency 'SwiftSyntax/Parser', "= #{s.version}"
    ts.dependency 'SwiftSyntax/Lib', "= #{s.version}"
  end
end
