# Environments


## Backstage App

### Backstage Setup
https://backstage.io/docs/getting-started/

npx @backstage/create-app@latest

copy over the app.config

#### GITHUB TOKEN
ENV_VAR GITHUB_TOKEN should be set - for demo use a PAT


### Install GitHub actions
https://backstage.io/docs/features/software-templates/builtin-actions/

from backstage root dir call:
`yarn --cwd packages/backend add @backstage/plugin-scaffolder-backend-module-github

and add to `/packages/backend/src/index.ts`:
`backend.add(import('@backstage/plugin-scaffolder-backend-module-github'));`

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


