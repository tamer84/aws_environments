# Backstage integrated AWS account provisioning
This repo provides an example lightweight alternative to <<  INSERT LINK TO BLOG POST HERE   >>, enabling the provisioning of Control Tower-integrated AWS OUs and accounts via GitHub Actions.
The main focus of this repo is the Backstage integration and the automated resource provisioning.

To see more details about the OU and account vending automation, see the repo [aws_management](https://github.com/tamer84/aws_management).

## Getting started
This project builds upon the implementation hosted in the  [aws_management](https://github.com/tamer84/aws_management) repo.  
Once the OU and account automation is in place, and at least one account has been created, you can proceed with this setup.  

## Backstage Setup
### Backstage Install
Backstage is not provided as part of this repo, and detailed setup instructions are also not provided.  
If you want to industrialize the setup after trying it out, there are deployment instructions available at the [official Backstage documentation](https://backstage.io/docs/deployment/).  

For this simple example, it's enough to launch Backstage locally.  
Just follow the [getting-started](https://backstage.io/docs/getting-started/) instructions provided by Backstage to get the sources.  

### Backstage Configuration
This setup requires [GitHub actions to be installed]https://backstage.io/docs/features/software-templates/builtin-actions/), so that the GitHub MR can be created.  
The instructions are available at the link above, and also shown here:

````
from backstage root dir call:
`yarn --cwd packages/backend add @backstage/plugin-scaffolder-backend-module-github

and add to `/packages/backend/src/index.ts`:
`backend.add(import('@backstage/plugin-scaffolder-backend-module-github'));`
````

To be able to discover the Catalog Entities from GitHub (and to trigger the eventual MR), Backstage requires a Token for GitHub.  
For this simple scenario, it is enough to [create a PAT](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic) and set it as an environment variable before starting Backstage.  


Finally, before [starting Backstage](https://backstage.io/docs/getting-started/#2-run-the-backstage-app), copy over the [example app-config.yaml](.backstage/config/app-config.yaml) from this repo.  
````
catalog:
  orphanStrategy: delete
  processingInterval: { minutes: 3 }
  import:
    entityFilename: catalog-info.yaml
    pullRequestBranchName: backstage-integration
  rules:
    - allow: [Component, System, API, Resource, Location, Domain, Template]
  locations:
    - type: url
      target: https://github.com/<<YOUR_GITHUB_ORG>>/aws_management/blob/main/catalog-info.yaml
    - type: url
      target: https://github.com/<<YOUR_GITHUB_ORG>>/aws_environments/blob/main/catalog-info.yaml
````
Make sure you modify the catalog location URLs to point to your own GitHub clones/forks of these repos.


### Launch Backstage
````
cd my-backstage-app # your app name
yarn dev
````

## Backstage catalog

### Templates

### Domains

### Systems

## Deployments


