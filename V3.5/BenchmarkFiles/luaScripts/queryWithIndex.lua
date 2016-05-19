request = function()
   path = "/databases/BenchmarkDB/indexes/Disks/ByYear?&query=Year:3000&pageSize=128"
   return wrk.format(nil, path)
end

						
