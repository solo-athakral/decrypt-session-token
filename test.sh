aws lambda invoke --function-name decrypt-session-token --payload file://test.json --cli-binary-format raw-in-base64-out response.json
cat response.json | jq
