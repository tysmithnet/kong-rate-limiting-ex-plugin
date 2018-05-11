package = "rate-limiting-ex"
version = "0.1.0-1"
source = {
	url = "https://github.com/tysmithnet/kong-rate-limiting-ex-plugin.git"
}
dependencies = {

}
build = {
	type = "builtin",
	modules = {
		["kong.plugins.rate-limiting.migrations.cassandra"] = "migrations/cassandra.lua",
    		["kong.plugins.rate-limiting.migrations.postgres"] = "migrations/postgres.lua",
    		["kong.plugins.rate-limiting.handler"] = "handler.lua",
    		["kong.plugins.rate-limiting.schema"] = "schema.lua",
    		["kong.plugins.rate-limiting.daos"] = "daos.lua",
    		["kong.plugins.rate-limiting.policies"] = "policies/init.lua",
    		["kong.plugins.rate-limiting.policies.cluster"] = "policies/cluster.lua"
	}
}
