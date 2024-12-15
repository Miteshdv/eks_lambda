import json
import boto3


def lambda_handler(event, context):
 
    dynamodb = boto3.resource('dynamodb')
    table = dynamodb.Table('eks-dynamodb-table')
    
    response = table.scan()
    
    return {
        'statusCode': 200,
        'body': json.dumps(response['Items'])
    }