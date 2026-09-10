local M = {}

---@enum AtlasLinearIssueConnection
M.Type = {
	ISSUES = "issues",
	TEAM_ISSUES = "team_issues",
	USER_ASSIGNED = "user_assigned",
	VIEWER_ASSIGNED = "viewer_assigned",
	VIEWER_CREATED = "viewer_created",
	WORKFLOW_STATE_ISSUES = "workflow_state_issues",
	PROJECT_ISSUES = "project_issues",
	CYCLE_ISSUES = "cycle_issues",
}

---@type table<AtlasLinearIssueConnection, string[]>
local paths = {
	[M.Type.ISSUES] = { "issues" },
	[M.Type.TEAM_ISSUES] = { "team", "issues" },
	[M.Type.USER_ASSIGNED] = { "user", "assignedIssues" },
	[M.Type.VIEWER_ASSIGNED] = { "viewer", "assignedIssues" },
	[M.Type.VIEWER_CREATED] = { "viewer", "createdIssues" },
	[M.Type.WORKFLOW_STATE_ISSUES] = { "workflowState", "issues" },
	[M.Type.PROJECT_ISSUES] = { "project", "issues" },
	[M.Type.CYCLE_ISSUES] = { "cycle", "issues" },
}

---@param connection AtlasLinearIssueConnection
---@return string[]|nil
function M.path(connection)
	return paths[connection]
end

return M
