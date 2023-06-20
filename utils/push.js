#!/usr/bin/env node
const { execSync } = require('child_process');
const core = require('@actions/core');

core.startGroup(`Preparing push to CocoapPods trunk`);
execSync('npm install', {
  stdio: ['inherit', 'inherit', 'inherit'],
  encoding: 'utf-8'
}
);
core.endGroup();

[
  'SwiftSyntaxLib.podspec',
  'SwiftBasicFormat.podspec',
  '_InstructionCounter.podspec',
  'SwiftIDEUtils.podspec',
  'SwiftDiagnostics.podspec',
  'SwiftParser.podspec',
  'SwiftRefactor.podspec',
  'SwiftOperators.podspec',
  'SwiftParserDiagnostics.podspec',
  'SwiftSyntaxBuilder.podspec',
  '_SwiftSyntaxTestSupport.podspec',
  'SwiftSyntaxMacros.podspec',
  'SwiftSyntaxMacroExpansion.podspec',
  'SwiftSyntaxMacrosTestSupport.podspec',
  'SwiftCompilerPluginMessageHandling.podspec',
  'SwiftCompilerPlugin.podspec',
  'SwiftSyntax.podspec',
].forEach((spec) => {
  core.startGroup(`Pushing ${spec} to CocoapPods trunk`);
  execSync(`pod trunk push --allow-warnings --synchronous --skip-import-validation --skip-tests --verbose ${spec}`, {
    stdio: ['inherit', 'inherit', 'inherit'],
    encoding: 'utf-8'
  }
  );
  core.endGroup();
});