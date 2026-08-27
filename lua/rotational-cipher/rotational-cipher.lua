return {
	rotate = function(input, key)
		local res = ""
		for c in string.gmatch(input, ".") do
			local c_num = string.byte(c)
			if c_num < 65 or c_num > 122 then
				res = res .. c
			else
				local VALUE_OF_A = string.byte("a")
				local DIFF_CAPITAL = VALUE_OF_A - string.byte("A")
				local is_capital = false
				if c_num < 97 then
					is_capital = true
					c_num = c_num + DIFF_CAPITAL
				end
				local new_c_num = (c_num - VALUE_OF_A + key) % 26 + 97
				if is_capital then
					new_c_num = new_c_num - DIFF_CAPITAL
				end
				res = res .. string.char(new_c_num)
			end
		end
		return res
	end,
}
