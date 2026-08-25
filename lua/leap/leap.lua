local leap_year = function(number)
	local is_leap = (number % 4 == 0) and ((number % 100 ~= 0) or (number % 400 == 0))
	return is_leap
end

return leap_year
