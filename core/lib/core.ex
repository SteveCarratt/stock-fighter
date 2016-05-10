defmodule Core do
	def test() do
		Socket.Web.connect "api.stockfighter.io", path: "ob/api/ws/BM83895836/venues/OIHAEX/tickertape"
	end
end
