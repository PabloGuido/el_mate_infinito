local M = {}

M.primera_vez_que_se_inicia_el_player = false
M.url_del_player = "player/player#player"
M.player_puede_mover_rocas = true
M.ultima_plataforma_segura = ""

M.parpadeo = function ()
	msg.post(".", "release_input_focus")
	go.set("#sprite", "tint.w", 0)
	go.animate("#sprite", "tint.w", go.PLAYBACK_LOOP_FORWARD, 1, go.EASING_LINEAR, 0.2)
	timer.delay(1, false, function()
		go.animate("#sprite", "tint.w", go.PLAYBACK_ONCE_FORWARD, 1, go.EASING_LINEAR, 0.2)
		msg.post(".", "acquire_input_focus")
	end)
end

return M