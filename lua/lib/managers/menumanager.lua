function MenuCallbackHandler:accept_skirmish_contract(item, node)
	managers.menu:active_menu().logic:navigate_back(true)
	managers.menu:active_menu().logic:navigate_back(true)

	local job_data = {
		difficulty = "sm_wish",
		job_id = managers.skirmish:random_skirmish_job_id()
	}

	if Global.game_settings.single_player then
		MenuCallbackHandler:start_single_player_job(job_data)
	else
		MenuCallbackHandler:start_job(job_data)
	end
end

function MenuCallbackHandler:accept_skirmish_weekly_contract(item, node)
	managers.menu:active_menu().logic:navigate_back(true)
	managers.menu:active_menu().logic:navigate_back(true)

	local weekly_skirmish = managers.skirmish:active_weekly()
	local job_data = {
		difficulty = "sm_wish",
		weekly_skirmish = true,
		job_id = weekly_skirmish.id
	}

	if Global.game_settings.single_player then
		MenuCallbackHandler:start_single_player_job(job_data)
	else
		MenuCallbackHandler:start_job(job_data)
	end
end