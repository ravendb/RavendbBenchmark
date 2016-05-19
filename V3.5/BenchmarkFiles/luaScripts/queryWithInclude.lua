request = function()
	path = "/databases/BenchmarkDB/indexes/Disks/ByArtists?&query=OneDisk:disks%2F"..math.random(1000000).."&pageSize=128&include=OneDisk"
   return wrk.format(nil, path)
end
