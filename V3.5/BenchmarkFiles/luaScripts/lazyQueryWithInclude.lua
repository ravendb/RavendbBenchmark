request = function()
	wrk.path = "/databases/BenchmarkDB/multi_get?parallel=yes"
	wrk.method = "POST"
	wrk.body ="[{\"Url\":\"/indexes/Disks/ByArtists\",\"Headers\":{},\"Query\":\"?&query=OneDisk:disks%2F"..math.random(1000).."&pageSize=128&include=OneDisk\",\"Method\":null,\"Content\":null}]"
	wrk.headers["Content-Type"] = "application/json"
	 return wrk.format( nil , method, body, headers)
end
