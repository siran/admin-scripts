#!/bin/bash

export ACCOUNTID="302504342008"
export ONBOARDING_ROLE="arn:aws:iam::302504342008:role/accountonboardingadmin"
export ORIGINAL_ROLE="arn:aws:iam::302504342008:role/admin/ann33-private-prod-shared-readonly"
export TF_ROLE="arn:aws:iam::302504342008:role/admin/ann33-private-prod-shared-terraform-state-readonly"

if [ "${1:-}" == "1" ]; then
    perl -pi -e 's/$ENV{ORIGINAL_ROLE}/$ENV{ONBOARDING_ROLE}/' backend.hcl
    perl -pi -e 's/$ENV{ORIGINAL_ROLE}/$ENV{ONBOARDING_ROLE}/' terraform.tfvars
    perl -pi -e 's/(tf_state_read_arn[^"]*")([^"]*)"/\1$ENV{ONBOARDING_ROLE}"/' terraform.tfvars
else
    perl -pi -e 's/$ENV{ONBOARDING_ROLE}/$ENV{ORIGINAL_ROLE}/' backend.hcl
    perl -pi -e 's/$ENV{ONBOARDING_ROLE}/$ENV{ORIGINAL_ROLE}/' terraform.tfvars
    perl -pi -e 's/(tf_state_read_arn[^"]*")([^"]*)"/\1$ENV{TF_ROLE}"/' terraform.tfvars
fi
