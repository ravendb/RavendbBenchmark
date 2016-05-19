counter = 0
request = function()
	wrk.path = "/databases/BenchmarkDB/bulk_docs"
	wrk.method = "POST"
	wrk.body ="[{\"Key\":\"temp/"..counter.."\",\"Method\":\"PUT\",\"Document\":{\"Name\":\"test"..math.random(1000).."\",\"Supplier\":"..math.random(1000)..",\"Category\":"..math.random(1000)..",\"QuantityPerUnit\":"..math.random(1000)..",\"PricePerUnit\":"..math.random(1000)..",\"UnitsInStock\":"..math.random(1000)..",\"UnitsOnOrder\":"..math.random(1000)..",\"Discontinued\":false,\"ReorderLevel\":"..math.random(1000).."},\"Metadata\":{\"Raven-Entity-Name\":\"Temp\"},\"AdditionalData\":null,\"Etag\":null}]"
	wrk.headers["Content-Type"] = "application/json"
	counter = counter + 1
return wrk.format( nil , method, body, headers)
end
