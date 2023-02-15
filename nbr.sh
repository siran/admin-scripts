#!/usr/local/bin/python3

import subprocess
import os

print("Creating branch")

# default_branch_name = "IAC-an"
default_branch_name = ""


description = input("description:")
pathstr = f"-".join(reversed(os.getcwd().split('/')[5:]))

# branch_name = f"{default_branch_name}-{description}-{pathstr}"
branch_name = f"{description}-{pathstr}"

subprocess.run(f"git checkout -b {branch_name}", shell=True)

