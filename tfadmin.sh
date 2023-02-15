#!/bin/bash

perl -pi -e 's/(role_arn)(.*?)-readonly/\1\2-admin/' backend.hcl
perl -pi -e 's/(assume_role_arn)(.*?)-readonly/\1\2-admin/' terraform.tfvars