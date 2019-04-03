# AbsorbTV
Mono repo for everything involving the AbsorbTV site.

## What?
AbsorbTV is at some point in time (who knows when) going to be a TV-series tracker, that was made out of frustration with every other site either missing features I personally wanted, or have too much fluff. It aims to be a really simple and straightforward site/app that makes it easy to keep track of what TV-series episodes you've watched and see which ones are left. It's currently very much a side project that I barely work on in my spare time, and using as a learning project.

## Technology
 - Deployment is handled by Terraform
 - Backend uses Amazon Web Services; Cognito for user registration, AppSync and DynamoDB for storing data and serving a GraphQL endpoint, and S3 for serving the static files
 - Frontend made with React and TypeScript
 - Database update tool made in Rust; using TVmaze API
