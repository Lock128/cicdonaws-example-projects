import * as cdk from 'aws-cdk-lib';
import * as cloudfront from 'aws-cdk-lib/aws-cloudfront';
import * as s3 from 'aws-cdk-lib/aws-s3';
import { Construct } from 'constructs';

export class FrontendStack extends cdk.Stack {
  constructor(scope: Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, props);

    const frontendSourceBucket = new s3.Bucket(this, 'FrontendAppBucket', {
      websiteIndexDocument: 'index.html',
    });

    const frontendOriginAccessIdentity = new cloudfront.OriginAccessIdentity(
      this,
      'FrontendAppOIA',
      {
        comment: 'Access from CloudFront to the bucket.',
      },
    );

    frontendSourceBucket.grantRead(frontendOriginAccessIdentity);

    const frontendCloudfront = new cloudfront.CloudFrontWebDistribution(
      this,
      'FrontendAppCloudFront',
      {
        originConfigs: [
          {
            s3OriginSource: {
              s3BucketSource: frontendSourceBucket,
              originAccessIdentity: frontendOriginAccessIdentity,
            },
            behaviors: [{ isDefaultBehavior: true }],
          },
        ],
        errorConfigurations: [
          {
            errorCode: 404,
            errorCachingMinTtl: 0,
            responseCode: 200,
            responsePagePath: '/index.html',
          },
        ],
      },
    );

    new cdk.CfnOutput(this, id + '-url', {
      value: `https://${frontendCloudfront.distributionDomainName}/`,
    });
    new cdk.CfnOutput(this, id + '-distributionId', {
      value: `${frontendCloudfront.distributionId}`,
    });
    new cdk.CfnOutput(this, id + '-bucket', {
      value: `${frontendSourceBucket.bucketName}`,
    });
  }
}
