request = function()
   path = "/databases/BenchmarkDB/queries/?include=Disks&id=artist%2F".. math.random(100000)..""
   return wrk.format(nil, path)
end
