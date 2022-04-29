# About

Sample function to decrypt `nextjs-auth0` session tokens.  Requires setting env var `AUTH0_SECRET` to decode.

# Build & Deploy
* Go to AWS Console and create a function.  This example uses `decrypt-session-token`.
* Build zip archive via `./build.sh`
* Deploy the archive vai `./deploy.sh`
