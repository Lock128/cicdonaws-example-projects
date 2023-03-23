import { CfnOutput, Stack, StackProps, Tags } from 'aws-cdk-lib';
import { Construct } from 'constructs';
import { APIDataService } from './construct';


export class APIDataServiceStack extends Stack {
  public readonly api: APIDataService;
  constructor(scope: Construct, id: string) {
    super(scope, id);
    this.applyTagging();

    this.api = new APIDataService(this, 'cicdonaws-api');

    this.output();
  }

  private applyTagging() {
    Tags.of(this).add('container', 'cicd');
    Tags.of(this).add('application', 'cicdonaws');
    Tags.of(this).add('project', 'cicdonaws-example-project');
  }

  private output() {
    new CfnOutput(this, 'cicdonaws.teamsTableName', {
      exportName: 'cicdonaws-table',
      value: this.api.cicdonawsTable.tableName,
    });
    new CfnOutput(this, 'cicdonaws.apiURl', {
      exportName: 'cicdonaws-apiURL',
      value: this.api.graphqlApi.graphqlUrl,
    });
    new CfnOutput(this, 'cicdonaws.apiKey', {
      exportName: 'cicdonaws-apiKey',
      value: this.api.graphqlApi.apiKey ? this.api.graphqlApi.apiKey : '',
    });
  }
}
