# testing_githubactions
self-guided training to build a toolchain inspired by [https://github.com/marco-lancini/utils/blob/main/ci/github/docker-build-sign-sbom/reusable-docker.yml](https://github.com/marco-lancini/utils/blob/main/ci/github/docker-build-sign-sbom/reusable-docker.yml)


## Introduction
You start with an empty pipeline and we will step by step add some tools to the process. First of all fork the repo as a public repo and create a free-tier AWS account. In the cloudformation directory, you will find a ecr file to deploy via cloudformation that will create a ECR repo. As of time writing this, the free tier included 500Mb/month to store docker images. We should need less than that.

## CodeQL
Checkout the main branch. It will provide you with the basis to start. The first step will be to integrate codeql as SAST tool into the pipeline. You can find some documentation here:
The solution is in branch solution1, which will be the basis for the next step.

