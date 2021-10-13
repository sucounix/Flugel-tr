# Flugel Test Documentation

## Documentation for steps to run and test the automation

### 1 - Local Test Using Terratest

1- By runing " tests/go test -v tf_test.go " 

   ![Screenshot](scr/tr-output.png)
   ![Screenshot](scr/tr-test-output.png)

### 2 - Apply Code Using Github Actions pipeline

1- Set Tokens

   ![Screenshot](scr/tr-token-in-github.png)


2- Github Actions pipeline apply results

   ![Screenshot](scr/git-action-ci-tr-apply-test.png)

3- AWS resources been created filtered by tag

   ![Screenshot](scr/aws-resources.png)

### 3 - configure pull request approval process with code automation checks

 1- Applying pull request approval rule on master

   ![Screenshot](scr/pr-approvel-rule.png)


 2- Github request approval rule results 

   ![Screenshot](scr/pr-approvel-with-code-checks.png)
 
