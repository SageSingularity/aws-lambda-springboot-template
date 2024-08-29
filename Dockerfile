# Use the official AWS Lambda base image for Java
FROM public.ecr.aws/lambda/java:11

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot application jar file into the container
COPY target/aws-lambda-springboot-template-1.0-SNAPSHOT.jar /app/application.jar

# Set the Lambda handler environment variable
ENV _HANDLER=com.amazonaws.serverless.proxy.spring.SpringBootLambdaContainerHandler::handleRequest

# Define the command to run the Lambda function
CMD ["com.amazonaws.serverless.proxy.spring.SpringBootLambdaContainerHandler::handleRequest"]
