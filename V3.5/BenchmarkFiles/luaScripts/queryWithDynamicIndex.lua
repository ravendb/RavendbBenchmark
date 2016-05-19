request = function()
   path = "/databases/BenchmarkDB/indexes/dynamic/Disks?&query=Genre:Dance&pageSize=128"
   return wrk.format(nil, path)
end

