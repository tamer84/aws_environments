# Backstage integrated AWS account provisioning
This repo extends the example solution from [aws_management](https://github.com/tamer84/aws_management).
The main focus of this repo is the automated resource provisioning within accounts.

## Getting started
This project builds upon the implementation hosted in the  [aws_management](https://github.com/tamer84/aws_management) repo.  
Once the OU and account automation is in place, and at least one account has been created, you can proceed with this setup.  
Fork this repo into your own GitHub org and continue.

## Deployments
Now things start to get interesting!  
![EnvironmentProvision](diagrams/AWS_Automation_GitHub-EnvironmentProvision.drawio.png)

The Template [AWS Environment Configuration](http://localhost:3000/create/templates/default/aws-environment-configuration) can be launched to create the terraform variables for an environment deployment.  
This repo contains a simple example, but it suffices to demonstrate how the templating works.  
The [Backstage template](.backstage/templates/aws-environment-configuration.yaml) gathers the configuration inputs from the user in the frontend, uses the templating action built into the Backstage Scaffolder, and creates an MR in the repo.  
Approving the MR merges the configuration to the `main` branch.  

The Template [AWS Environment Operation](http://localhost:3000/create/templates/default/aws-environment-operation) ([defined here](.backstage/templates/aws-environment-operation.yaml)) can be used to trigger a GitHub workflow to create/update/destroy an AWS accounts resources.  
In real life scenarios, the merging of the MR would lead to some kind of approval flow (automated or semi-manual) before triggering the rollout to the environemnt.  

For the sake of simplicity, this repo demonstrates Backstage directly calling GitHub workflows from Backstage.

## Next steps
Get creative and extend the infra_resources to provision whatever you need in your environments.  
Extending the backstage Templates will allow you to configure the new resource types.  
