package = "kong-scalable-rate-limiter"

version = "1.1.1-1"

supported_platforms = {"linux", "macosx"}

source = {
    url = "git://github.com/saroha87/kong-scalable-rate-limiter",
    tag = "v1.1.1"
}

description = {
    summary = "Scalable Rate Limiter plugin for Kong API Gateway"
}

dependencies = {
    "lua-resty-ipmatcher == 0.6.1",
}

build = {
    type = "builtin",
    modules = {
        ["kong.plugins.scalable-rate-limiter.handler"] = "kong/plugins/scalable-rate-limiter/handler.lua",
        ["kong.plugins.scalable-rate-limiter.schema"] = "kong/plugins/scalable-rate-limiter/schema.lua",
        ["kong.plugins.scalable-rate-limiter.expiration"] = "kong/plugins/scalable-rate-limiter/expiration.lua",
        ["kong.plugins.scalable-rate-limiter.policies"] = "kong/plugins/scalable-rate-limiter/policies/init.lua",
        ["kong.plugins.scalable-rate-limiter.policies.connection"] = "kong/plugins/scalable-rate-limiter/policies/connection.lua",

        ["resty.rediscluster"] = "kong/plugins/scalable-rate-limiter/resty-redis-cluster/rediscluster.lua",
        ["resty.xmodem"] = "kong/plugins/scalable-rate-limiter/resty-redis-cluster/xmodem.lua"
    }
}
