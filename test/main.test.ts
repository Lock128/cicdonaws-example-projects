import { App } from 'aws-cdk-lib';
import { Template } from 'aws-cdk-lib/assertions';
import { APIDataServiceStack } from '../src/api/stack';

test('Snapshot', () => {
  const app = new App();
  const stack = new APIDataServiceStack(app, 'test');

  const template = Template.fromStack(stack);
  expect(template.toJSON()).toMatchSnapshot();
});