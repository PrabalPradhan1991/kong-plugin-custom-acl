local typedefs = require "kong.db.schema.typedefs"

return {
    name = "kong-plugin-custom-acl",
    fields = {
        { consumer = typedefs.no_consumer },
        { config = {
            type = "record",
            fields = {
                { claims_to_inject = { type = "array", required = true, default = { "sub", "email" } } },
            },
        }, },
    },
}