package = "kong-plugin-custom-acl"
version = "1.0-2"
source = {
  url = "/usr/local/share/lua/5.1/kong/plugins/custom-acl",
  tag = "V1.0.2"
}
description = {
  summary = "A Kong plugin that will expose JWT claims as request headers",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.custom-acl.handler"] = "handler.lua"
  }
}
