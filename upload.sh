#!/bin/bash
if [ $GENERIC_TYPE -eq 1 ]; then
    python .github/workflows/generic.py
else
    python .github/workflows/oem.py
fi