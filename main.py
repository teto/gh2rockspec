# https://docs.github.com/en/rest/repos/repos#get-a-repository
# https://github.com/teto/vim2rockspec.git
import argparse
import sys
import subprocess
import json
from string import Template


# argparse.
# OWNER/REPO
# TODO need to pass token as well
user = sys.argv[1]
url = f"https://api.github.com/repos/{user}"
# curl \
#   -H "Accept: application/vnd.github+json" \ 
#   -H "Authorization: token <TOKEN>" \
#   https://api.github.com/repos/OWNER/REPO
cmd = [ "curl", "-H", "Accept: application/vnd.github+json",  url]
res = subprocess.check_output(cmd)

print(res.decode())
data = json.loads(res.decode())
print(data)

fd = open("template.rockspec")
content = fd.read()
tpl = Template(content)

fill = {'name': data["name"],
        'description': data.get("description", "No description"),
        "license": data["license"]["spdx_id"],
        'homepage': data["html_url"],
        "owner": data["owner"]["login"],
        'repo': data["name"]
        }
res = tpl.substitute(fill)
print(res)

