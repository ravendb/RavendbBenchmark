request = function()
	path = "/databases/BenchmarkDB/queries/?&transformer=JustTitleAndArtist&id=disks%2F"..math.random(1000000)..""
   return wrk.format(nil, path)
end
