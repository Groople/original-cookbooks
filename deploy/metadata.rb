name        "deploy"
description "Deploy the prerender application"
maintainer  "Level Seven"
license     "Apache 2.0"
version     "1.0.0"

depends "dependencies"
depends "ssh_users"
depends "opsworks_agent_monit"

recipe "deploy::prerender", "Deploy the Prerender server"
