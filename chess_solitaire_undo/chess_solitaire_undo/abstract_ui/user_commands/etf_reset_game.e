note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_RESET_GAME
inherit
	ETF_RESET_GAME_INTERFACE
create
	make
feature -- command
	reset_game
    	do
			-- perform some update on the model state
			if model.game_started = false then
				model.msg_set ("  Error: Game not yet started")
				etf_cmd_container.on_change.notify ([Current])
			else
				model.reset
				etf_cmd_container.on_change.notify ([Current])
			end
    	end

end
