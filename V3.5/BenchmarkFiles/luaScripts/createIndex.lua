request = function()
	wrk.path = "/databases/Northwind/indexes/Category/ByName?definition=yes"
	wrk.method = "PUT"
	wrk.body ="{\"Analyzers\":{},\"Fields\":[],\"Indexes\":{},\"InternalFieldsMapping\":{},\"IsTestIndex\":false,\"IsSideBySideIndex\":false,\"IsCompiled\":false,\"IsMapReduce\":false,\"LockMode\":\"Unlock\",\"Map\":\" from category in docs.Categories\\r\\nselect new { category.Name } \",\"Maps\":[\" from category in docs.Categories\r\nselect new { category.Name } \"],\"Name\":\"Category/ByName\",\"Reduce\":null,\"SortOptions\":{},\"SpatialIndexes\":{},\"Stores\":{},\"Suggestions\":{},\"TermVectors\":{},\"Type\":\"Map\",\"MaxIndexOutputsPerDocument\":null}"
	wrk.headers["Content-Type"] = "application/json"
	 return wrk.format( nil , method, body, headers)
end
