#!/usr/bin/env bash

export version_tag="v0.1.0"
cd overlays/dev

../../kustomize edit set image eu.gcr.io/application-gcp-project/application:{{version}}:$version_tag
../../kustomize edit add secret application --from-literal=apikey="fdhsqjlkfhdjsql"

../../kustomize build .
