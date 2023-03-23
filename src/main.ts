import { App, CfnOutput, Stack, StackProps, Tags } from 'aws-cdk-lib';
import { APIDataServiceStack } from './api/stack';
import { FrontendStack } from './frontend/frontend-stack';

const devEnv = {
  account: process.env.CDK_DEFAULT_ACCOUNT,
  region: 'eu-central-1',
};

const app = new App();

new APIDataServiceStack(app, 'cicdonaws-apidata-service', { env: devEnv });
new FrontendStack(app, 'cicdonaws-frontend', { env: devEnv });

app.synth();