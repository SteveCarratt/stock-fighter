defmodule ExecutionStream do
	defp openStream(stockMarket) do
		Socket.Web.connect!"api.stockfighter.io", path: "/ob/api/ws/" <> stockMarket[:tradingaccount] <> "/venues/" <> stockMarket[:venue] <> "/executions", secure: true
	end

	def start() do
		{:ok, file} = File.open "executions.log", [:write]
		stream = openStream %{ tradingaccount: "SOB84326984", venue: "KNYEX" } 
		loop stream, file
	end

	defp loop(stream, file) do
		message = nextMessage stream
		case message do
			{ :text, execution } -> 
				IO.inspect execution
				IO.binwrite file, (:erlang.term_to_binary(execution) <> "\n")
			_ ->	IO.inspect message 
		end
		loop stream, file
	end

	defp nextMessage(stream) do
		Socket.Web.recv! stream
	end
end
