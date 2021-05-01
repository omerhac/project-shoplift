### file for packaging and deploying the project infrastructure on cloudformation

# package voice recognition stack
aws cloudformation package --s3-bucket project-shoplift --template-file infrastructure/voice_recognition.yaml --output-template-file infrastructure/gen/voice_recognition.yaml

# deploy voice recognition stack
aws cloudformation deploy --template-file /Users/home/PycharmProjects/shoplift/infrastructure/gen/voice_recognition.yaml --stack-name ShopliftVoiceRecognition \
 --capabilities CAPABILITY_NAMED_IAM

# package order processing stack
aws cloudformation package --s3-bucket project-shoplift --template-file infrastructure/order_process.yaml --output-template-file infrastructure/gen/order_proccess.yaml

# deploy order processing stack
aws cloudformation deploy --template-file /Users/home/PycharmProjects/shoplift/infrastructure/gen/order_process.yaml --stack-name ShopliftOrderProcess \
 --capabilities CAPABILITY_NAMED_IAM