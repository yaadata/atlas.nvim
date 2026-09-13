local M = {}
M.views = function()
	local configured = {
		name = "Assigned",
		key = "1",
		layout = "compact",
		assigne = "me",
	}
	return configured
end

---@param target AtlasTarget
---@return AtlasLinearIssueViewConfig
M.view_for_target = function(target)
	local configured = {
		name = "Assigned",
		key = "2",
		layout = "compact",
		assigne = target.issue_key,
	}
	return configured
end
M.resolve_search = function(view) end
M.issue_ref = function(target) end

return M
