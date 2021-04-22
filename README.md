# pizza-exress

Sample NodeJS app

## Requirements

* docker
* docker-compose
* node
* npm
* terraform
* google-cloud-sdk

## Use

To run tests:

```console
docker-compose -f docker-compose-tests.yml up --exit-code-from pizza-express
```

To run application locally:

```
docker-compose up
```

## Infra

We're using GKE to bring up k8s cluster.

```console
cd infra
terraform init
terraform plan
terraform apply
```

Once the cluster is up you should configure credentials and put them to GitHub secrets.

## Notes

* Tests are running in pipeline using docker-compose
* Container image pushed to GitHub Packages
