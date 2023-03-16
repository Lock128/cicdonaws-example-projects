import { App, CfnOutput, Stack, StackProps, Tags } from 'aws-cdk-lib';
import { Construct } from 'constructs';
import { APIDataService } from './api/construct';


export class CICDOnAWSStack extends Stack {
  private readonly apiDataService: APIDataService;

  constructor(scope: Construct, id: string, props: StackProps = {}) {
    super(scope, id, props);

    this.apiDataService = new APIDataService(this, 'apidata-service');

    // define resources here...
    this.applyTagging();
    this.output();
  }

  private applyTagging() {
    Tags.of(this).add('application', 'cicdonaws');
    Tags.of(this).add('project', 'cicdonaws');
  }

  private output() {
    new CfnOutput(this, 'apiDataService.apiURl', {
      value: this.apiDataService.api.graphqlUrl,
    });
    new CfnOutput(this, 'apiDataService.apiKey', {
      value: this.apiDataService.api.apiKey
        ? this.apiDataService.api.apiKey
        : '',
    });
  }
}
// for development, use account/region from cdk cli
/*const devEnv = {
  account: process.env.CDK_DEFAULT_ACCOUNT,
  region: process.env.CDK_DEFAULT_REGION,
};*/
const devEnv = {
  account: process.env.CDK_DEFAULT_ACCOUNT,
  region: 'eu-central-1',
};

const app = new App();

new CICDOnAWSStack(app, 'cicdonaws-example-projects-dev', { env: devEnv });
// new CICDOnAWSStack(app, 'cicdonaws-example-projects-prod', { env: prodEnv });

app.synth();