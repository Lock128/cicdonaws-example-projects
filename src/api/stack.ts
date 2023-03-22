import { CfnOutput, Stack, StackProps, Tags } from 'aws-cdk-lib';
import { EventBus } from 'aws-cdk-lib/aws-events';
import { Construct } from 'constructs';
import { SportsDataApi } from './api/construct';

export interface SportsDataServiceProps extends StackProps {
  messageBusName: string;
}

export class SportsDataServiceStack extends Stack {
  public readonly api: SportsDataApi;
  constructor(scope: Construct, id: string, props: SportsDataServiceProps) {
    super(scope, id, props);
    this.applyTagging();

    const eventBus = EventBus.fromEventBusName(
      this,
      'message-bus',
      props.messageBusName,
    );

    this.api = new SportsDataApi(this, 'api', {
      eventBus,
    });

    new MatchReminder(this, 'match-reminder', {
      eventBus: eventBus,
    });

    this.output();
  }

  private applyTagging() {
    Tags.of(this).add('container', 'sports-data-service');
    Tags.of(this).add('application', 'matchcenter');
    Tags.of(this).add('project', 'football-match-center');
  }

  private output() {
    new CfnOutput(this, 'sportsDataService.teamsTableName', {
      exportName: 'sportsDataService-teamsTableName',
      value: this.api.teamsTable.tableName,
    });
    new CfnOutput(this, 'sportsDataService.matchesTableName', {
      value: this.api.matchesTable.tableName,
    });
    new CfnOutput(this, 'sportsDataService.apiURl', {
      value: this.api.graphqlApi.graphqlUrl,
    });
    new CfnOutput(this, 'sportsDataService.apiKey', {
      value: this.api.graphqlApi.apiKey ? this.api.graphqlApi.apiKey : '',
    });
  }
}
