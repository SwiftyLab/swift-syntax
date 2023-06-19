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
  '_CollectionsTestSupport.podspec',
  'DequeModule.podspec',
  'OrderedCollections.podspec',
  'CollectionsLib.podspec',
  'SwiftyCollections.podspec',
].forEach((spec) => {
  core.startGroup(`Pushing ${spec} to CocoapPods trunk`);
  execSync(`pod trunk push --allow-warnings --synchronous --skip-tests --verbose ${spec}`, {
      stdio: ['inherit', 'inherit', 'inherit'],
      encoding: 'utf-8'
    }
  );
  core.endGroup();
});