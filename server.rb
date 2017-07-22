require "socket"

server = TCPServer.new("localhost", 3003)
loop do
  client = server.accept

  request_line = client.gets
  next if !request_line || request_line =~ /favicon/

  puts request_line

  http_method, path_and_params, http = request_line.split(" ")
  path, params = path_and_params.split("?")

  params = params.split("&").each_with_object({}) do |pair, hash|
    key, value = pair.split("=")
    hash[key] = value
  end

  client.puts "HTTP/1.1 200 OK\r\n\r\n"
  client.puts request_line

  1.upto(params["rolls"].to_i) do
    client.puts rand(params["sides"].to_i) + 1
  end

  client.close
end
