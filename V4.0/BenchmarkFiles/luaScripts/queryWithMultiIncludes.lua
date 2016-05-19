request = function()
	path = "/databases/BenchmarkDB/indexes/Disks/ByArtists?&query=Disks:disks%2F"..math.random(5).."&pageSize=128&include=Disks"
   return wrk.format(nil, path)
end
