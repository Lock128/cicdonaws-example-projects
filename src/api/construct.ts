import path from 'path';
import {
  Names,
  Tags,
  aws_appsync as appsync,
  aws_dynamodb as dynamodb,
  aws_logs as logs,
} from 'aws-cdk-lib';
import { Construct } from 'constructs';


export class APIDataService extends Construct {
  public readonly cicdonawsTable: dynamodb.Table;
  public readonly graphqlApi: appsync.GraphqlApi;

  constructor(scope: Construct, id: string) {
    super(scope, id);
    this.applyTagging();

    this.cicdonawsTable = new dynamodb.Table(this, 'cicdonaws', {
      partitionKey: { name: 'PK', type: dynamodb.AttributeType.STRING },
      sortKey: { name: 'SK', type: dynamodb.AttributeType.STRING },
      billingMode: dynamodb.BillingMode.PAY_PER_REQUEST,
      stream: dynamodb.StreamViewType.NEW_AND_OLD_IMAGES,
    });

    this.tableIndices();

    this.graphqlApi = new appsync.GraphqlApi(this, 'api', {
      name: Names.uniqueId(this),
      schema: appsync.SchemaFile.fromAsset(
        path.join(__dirname, 'api/schema.graphql'),
      ),
      authorizationConfig: {
        defaultAuthorization: {
          authorizationType: appsync.AuthorizationType.API_KEY,
        },
      },
      xrayEnabled: true,
      logConfig: {
        retention: logs.RetentionDays.ONE_WEEK,
        fieldLogLevel: appsync.FieldLogLevel.ALL,
      },
    });

    this.connectApiToDynamoDb();
  }


  private tableIndices() {
    this.cicdonawsTable.addGlobalSecondaryIndex({
      indexName: 'matches-per-season',
      partitionKey: { name: 'Season', type: dynamodb.AttributeType.STRING },
      sortKey: { name: 'Date', type: dynamodb.AttributeType.STRING },
    });
  }

  private connectApiToDynamoDb() {
    const matchesDataSource = this.graphqlApi.addDynamoDbDataSource(
      'matches-datasource',
      this.cicdonawsTable,
    );

    matchesDataSource.createResolver('get-matches-by-date-resolver', {
      typeName: 'Query',
      fieldName: 'getMatchesByDate',
      requestMappingTemplate: appsync.MappingTemplate.fromFile(
        path.join(
          __dirname,
          '/api/appsync-resolver/get-matches-by-date/request.vtl',
        ),
      ),
      responseMappingTemplate: appsync.MappingTemplate.fromFile(
        path.join(
          __dirname,
          '/api/appsync-resolver/get-matches-by-date/response.vtl',
        ),
      ),
    });

    matchesDataSource.createResolver('all-matches-resolver', {
      typeName: 'Query',
      fieldName: 'allMatches',
      requestMappingTemplate: appsync.MappingTemplate.fromFile(
        path.join(__dirname, '/api/appsync-resolver/all-matches/request.vtl'),
      ),
      responseMappingTemplate: appsync.MappingTemplate.fromFile(
        path.join(__dirname, '/api/appsync-resolver/all-matches/response.vtl'),
      ),
    });
  }

  private applyTagging() {
    Tags.of(this).add('service', 'sports-data');
  }
}
