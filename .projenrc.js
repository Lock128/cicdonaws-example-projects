const { awscdk, javascript } = require('projen');
const project = new awscdk.AwsCdkTypeScriptApp({
  cdkVersion: '2.61.0',
  defaultReleaseBranch: 'main',
  name: 'cicdonaws-example-projects',
  prettier: true,
  github: false,
  gitignore: ['outputs.json'],
  packageManager: javascript.NodePackageManager.NPM,
  deps: [
    '@aws-sdk/client-dynamodb@3.264.0',
  ] /* Runtime dependencies of this module. */,
  // deps: [],                /* Runtime dependencies of this module. */
  // description: undefined,  /* The description is just a string that helps people understand the purpose of the package. */
  // devDeps: [],             /* Build dependencies for this module. */
  // packageName: undefined,  /* The "name" in package.json. */

});
project.synth();