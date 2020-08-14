#!/bin/bash

set -o errexit -o nounset -o pipefail

cd appcode

revision="$(date '+%Y%m%d%H%M%S')+git.sha.$(cat .git/short_ref)"
version="$(mvn help:evaluate -Drevision="${revision}" -Dexpression=project.version -q -DforceStdout)"

mvn clean package \
  -Drevision="${revision}"

#cp target/hello-world-*.war ../build
#cp pom.xml ../build
#mkdir ../build/codecoverage
#cp target/site/jacoco-ut/index.html ../build/codecoverage/index.html
echo "${version}" > ../build/version
