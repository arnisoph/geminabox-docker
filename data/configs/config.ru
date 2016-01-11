require "rubygems"
require "geminabox"

Geminabox.data = "/srv/gems/"
Geminabox.rubygems_proxy = true
Geminabox.allow_remote_failure = true
Geminabox.allow_replace = false
Geminabox.allow_delete = false

run Geminabox::Server
