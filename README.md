<!--
title: 'A Simple Serverless GraphQL API for MySQL, Postgres and Aurora'
description: 'This is an example project that uses 3 RDS databases to illustrate the differences between using each of them'
layout: Doc
framework: v1
platform: AWS
language: nodeJS
authorLink: ’https://github.com/chief-wizard'
authorName: ‘Chief Wizard’
authorAvatar: ‘https://avatars3.githubusercontent.com/u/40777040?v=4&s=140
-->

# A Simple Serverless GraphQL API for MySQL, Postgres and Aurora

This is an example project using the [Serverless framework](https://serverless.com/framework/), Node.js and [Amazon RDS](https://aws.amazon.com/rds/).

This project uses an Aurora encrypted serverless RDS databases and a bastion host.

## How to Deploy This Project

### Pre-Requisites

To deploy this GraphQL API, you’ll need the following:

* An AWS account.
* [AWS CLI](https://aws.amazon.com/cli/) installed locally.
* API credentials for your AWS account configured in your AWS CLI locally by running `aws configure`.
* Serverless framework installed locally via `npm -g install serverless`.

### Steps to Deploy

Once all pre-requisite items are ready, follow these steps to deploy this example GraphQL API:

1. Run `npm install` to install all the necessary dependencies.
2. Run `npm run deploy` to deploy the stack.

### Steps to Remove All Resources

After you’ve finished working with this example, remove all resources to make sure you’re not getting billed for unused RDS databases.

Run `npm run remove` to remove all resources.


To connect to the RDS locally, you will need to go to the bastion host and then either connect via ssh or via tunnel:

```
ssh -N -L 3306:database.rds.amazonaws.com:3306 ec2-user@public-ip-bastion-host -i ~/hostkey.pem 
```

Once you do a port forwarding, then you can run `db-migrate` to create the database:

```
node node_modules/db-migrate/bin/db-migrate --config config/database.json up
```