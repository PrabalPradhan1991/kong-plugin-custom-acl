package = "kong-plugin-custom-acl"
version = "1.0-2"
source = {
  url = "git+https://github.com/PrabalPradhan1991/kong-plugin-custom-acl.git",
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
