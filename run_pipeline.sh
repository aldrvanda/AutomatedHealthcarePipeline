#!/usr/bin/env bash
# Runs the full healthcare ETL job.
# Set PDI_HOME to your Pentaho data-integration folder, e.g. export PDI_HOME=~/pentaho/data-integration
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
: "${PDI_HOME:?PDI_HOME is not set. Example: export PDI_HOME=~/pentaho/data-integration}"
mkdir -p "$DIR/logs"
"$PDI_HOME/kitchen.sh" -file="$DIR/healthcareJob.kjb" -level=Basic -logfile="$DIR/logs/healthcareJob.log"
