# aws-ecr-action
This is AWS ECR action to create repository if not exist 

## Features:
 - Create repository in ECR
 - Set default livfecycle policy
 - For lifecycle policy can be selected all available rules


### Simple example usage
For auth in AWS must be used action 'Configure AWS Credentials For GitHub Actions' 
```yaml
      - name: Configure AWS Credentials
        uses: aws-actions/configure-aws-credentials@v1-node16
        with:
          role-to-assume: ${{secrets.AWS_ROLE}}
          role-session-name: AWSSsession
          aws-region: ${{ env.AWS_REGION }}
      - name: Create AWS ECR repository
        uses: uspacy/aws-ecr-action@v1
        with:
          repositoryName: ${{ github.event.repository.name }}
          
          
```

### Available inputs:


| Name               | Values               | Default |
|--------------------|----------------------|---------|
| repositoryName     | You repository name  |         |
| imageTagMutability | MUTABLE or UNMUTABLE | MUTABLE |
| scanOnPush | True or False        | True    |
 | tags | List of tags | [] |
| tagStatus | tagged,untagged,any| any |
| countType | imageCountMoreThan or sinceImagePushed | imageCountMoreThan |
 | countNumber| Number of images to keep | 30 | 



