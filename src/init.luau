--// Public

local function token(identifier: string?): any
	if not identifier then
		return newproxy()
	end

	local proxy = newproxy(true)

	getmetatable(proxy).__tostring = function()
		return identifier
	end

	return proxy
end

--// Export

return table.freeze({
	token = token,
})
