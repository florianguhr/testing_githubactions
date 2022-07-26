# testing_githubactions
self-guided training to build a toolchain using the kubernetes guestbook example [https://github.com/kubernetes/examples/tree/master/guestbook-go](https://github.com/kubernetes/examples/tree/master/guestbook-go) as source code.

## Start
introductory presentation for github actions.

## Introduction
You start with an empty pipeline and we will step by step add some tools to the process. First of all fork the repo as a public repo and create a free-tier AWS account. In the cloudformation directory, you will find a ecr file to deploy via cloudformation that will create a ECR repo. The output of this is used to configure your secrets in the github repo. As of time writing this, the free tier included 500Mb/month to store docker images. We should need less than that. After each step, there is a is a branch called solution_X which will give you an example solution for this task.

## Task 1 - CodeQL
Checkout the main branch. It will provide you with the basis to start. The first step will be to integrate codeql as SAST tool into the pipeline. You can find some documentation here: [https://docs.github.com/en/code-security/code-scanning/automatically-scanning-your-code-for-vulnerabilities-and-errors/about-code-scanning-with-codeql](https://docs.github.com/en/code-security/code-scanning/automatically-scanning-your-code-for-vulnerabilities-and-errors/about-code-scanning-with-codeql). The solution is in branch solution1, which will be the basis for the next step.

## Task 2 - Dependabot
We also want to keep our dependencies up to date, if we use any. For this purpose we will use dependabot: [https://docs.github.com/en/code-security/dependabot/dependabot-version-updates/configuration-options-for-the-dependabot.yml-file](https://docs.github.com/en/code-security/dependabot/dependabot-version-updates/configuration-options-for-the-dependabot.yml-file). Follow the descriptions to add a dependabot.yml file.

## Task 3 - Trivy Container scanning
As a next step, we will include trviy to scan the container. This needs to be done after the container build, because the container images is scanned. Also, we want to upload the results to github: [https://github.com/aquasecurity/trivy-action#using-trivy-with-github-code-scanning](https://github.com/aquasecurity/trivy-action#using-trivy-with-github-code-scanning)

## Task 4 -IaC scanning and Kubernetes scanning
In order to deploy you need a cluster to run the container. There are some examples to create a cluster in the terraform folder. As part of our solution, we want to use checkov action [https://github.com/bridgecrewio/checkov-action](https://github.com/bridgecrewio/checkov-action) to scan the terraform and cloudformation repos.
