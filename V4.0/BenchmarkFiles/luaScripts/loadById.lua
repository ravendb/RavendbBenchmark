request = function()
	if math.random(2) == 1 then 
		path = "/databases/StackOverflow/docs?&id=questions/".. math.random(12350817)..""
	else
		  path = "/databases/StackOverflow/docs?&id=users/".. math.random(5987285)..""
	end
   	return wrk.format(nil, path)
end
