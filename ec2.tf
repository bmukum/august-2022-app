# Set up a Boto3 EC2 client
ec2 = boto3.client('ec2')

# Set the instance ID of the EC2 instance you want to start
instance_id = 'your_instance_id'

# Start the EC2 instance
ec2.start_instances(InstanceIds=[instance_id])

print(f'Starting instance {instance_id}')