request = function()
   path = "/databases/BenchmarkDB/docs?&include=OneDisk&id=artist%2F".. math.random(100000)..""
   return wrk.format(nil, path)
end
