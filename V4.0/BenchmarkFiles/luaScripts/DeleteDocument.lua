counter = 0

request = function()
	wrk.path = "/databases/BenchmarkDB/bulk_docs"
	wrk.method = "POST"
	wrk.body ="[{\"Key\":\"temp/"..counter.."\",\"Etag\":null,\"Method\":\"DELETE\",\"AdditionalData\":null}]"
	wrk.headers["Content-Type"] = "application/json"
	counter = counter + 1
return wrk.format( nil , method, body, headers)
end
