return {
	label = function(c1, c2, c3)
		local colors = {
			black = 0,
			brown = 1,
			red = 2,
			orange = 3,
			yellow = 4,
			green = 5,
			blue = 6,
			violet = 7,
			grey = 8,
			white = 9,
		}

		local prefixed = {
			"",
			"kilo",
			"mega",
			"giga",
			"tera",
		}
		local prefix_num = math.floor(colors[c3] / 3) + 1
		local zeros = colors[c3] % 3
		local num = 10 ^ zeros * (colors[c2] + 10 * colors[c1])
		if num % 1000 == 0 and num > 0 then
			num = num / 1000
			prefix_num = prefix_num + 1
		end

		return num, prefixed[prefix_num] .. "ohms"
	end,
}
