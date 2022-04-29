# About

Sample function to decrypt `nextjs-auth0` session tokens.

# Configuration
* Go to AWS Console and create a function.  This example uses `decrypt-session-token`.
* Platform: `Python 3.8`
* Memory: `128MB`
* Architecture: `x86_64`
* Environment Variable: `AUTH0_SECRET`
* handler: `lambda_function.lambda_handler`

# Build & Deploy
* Build zip archive via `./build.sh`.  This will create a zip archive built via Docker.
* Upload & Deploy the archive via `./deploy.sh`

# Test Event Format
```
{
  "token": "<your token string>"
}
```
