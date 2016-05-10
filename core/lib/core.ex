defmodule Core do
	def start(tradingaccount, venue) do
		Socket.Web.connect "api.stockfighter.io", path: "/ob/api/ws/" <> tradingaccount <> "/venues/" <> venue <> "/executions", secure: true
	end
end
