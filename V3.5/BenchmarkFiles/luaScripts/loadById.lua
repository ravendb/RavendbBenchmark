request = function()
   path = "/databases/BenchmarkDB/docs?id=disks%2F".. math.random(3500000)..""
   return wrk.format(nil, path)
end
