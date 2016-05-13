defmodule ExecutionHandler do
	def loop(receive) do
		message = receive.()
		case message do
			{ :text, _ } -> 
				IO.puts "text"
				loop receive
			_ ->
				IO.puts "unknown"
				IO.inspect message
				loop receive	
		end
	end 
end
