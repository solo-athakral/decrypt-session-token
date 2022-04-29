import json
import os
from jose import jwe, jwk
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.kdf.hkdf import HKDF

AUTH0_SECRET = os.environ["AUTH0_SECRET"]

def lambda_handler(event, context):
    token = event["token"]
    info = b'JWE CEK'
    hkdf = HKDF(algorithm=hashes.SHA256(),length=32,salt=b'',info=info)
    return json.loads(jwe.decrypt(token,hkdf.derive(AUTH0_SECRET.encode('utf-8'))).decode('utf-8'))
