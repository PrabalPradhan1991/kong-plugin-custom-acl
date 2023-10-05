local jwt_decoder = require "kong.plugins.jwt.jwt_parser"
local kong_meta = require "kong.meta"

-- local function inject_claims(conf)
--     local claims_to_inject = conf.config.claims_to_inject
--     local jwt, err = jwt_decoder:new(ngx.var.jwt)

--     if not err then
--         local claims = jwt.claims
--         for _, claim in ipairs(claims_to_inject) do
--             local value = claims[claim]
--             if value then
--                 ngx.req.set_header("X-" .. claim, value)
--             end
--         end
--     end
-- end

return {
    no_consumer = true,
    PRIORITY = 1451,
    VERSION = "1.0.0",
    -- fields = {
    --     claims_to_inject = { type = "array", required = true, default = { "sub", "email" } },
    -- },
    -- self_check = function(schema, plugin_t, dao, is_updating)
    --     -- Perform any additional checks on the configuration here if needed
    --     return true
    -- end,
    access = function(self, conf)
        print("i should be here")
    end,
}