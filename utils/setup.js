#!/usr/bin/env node
const { execSync } = require('child_process');
const fs = require('fs-extra');
const core = require('@actions/core');

const destDir = 'node_modules/swift-collections';
const package = JSON.parse(fs.readFileSync('package.json', 'utf8'));
const command = `git clone \
 "https://github.com/apple/swift-collections.git" \
 "${destDir}" \
 --branch "${package.version}" --single-branch`;
core.startGroup(`Cloning official swift-collections repo`);
fs.removeSync(destDir);
execSync(command, {
    stdio: ['inherit', 'inherit', 'inherit'],
    encoding: 'utf-8'
  }
);
core.endGroup();

core.startGroup(`Copy source files for swift-collections`);
['Sources', 'Tests'].forEach((dir) => {
  const source = `${destDir}/${dir}`;
  fs.emptyDirSync(dir);
  fs.copySync(source, dir);
});
core.endGroup();
