#!/bin/bash

if [ ! -f Makefile ]; then
    echo "No makefile, refusing to run."
    exit 1
fi

git checkout Makefile || true
echo "Checking Makefile"

if ! grep -q "apply: #init" Makefile; then
    echo "Configured apply w/o init"
    perl -pi -e 's/apply: init/apply: #init/' Makefile
fi

if ! grep -q "validate: #init" Makefile; then
    echo "Configured validate w/o init"
    perl -pi -e 's/validate: init/validate: #init/' Makefile
fi

if ! grep -q "applyaa: " Makefile; then
    echo "Configured applyaa"
    echo -e "applyaa:\n\t@\$(AGENT) terraform apply -auto-approve" >> Makefile
fi



