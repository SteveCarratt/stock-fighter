defmodule ExecutionHandler do
	def handle(receive) do
		{:ok, file} = File.open "executions.log", [:write]
		loop receive, file
	end

	defp loop(receive, file) do
		message = receive.()
		case message do
			{ :text, message} -> 
				IO.binwrite file, (message <> "\n")
			_ ->
				IO.inspect message
		end
		loop receive, file	
	end 
end
