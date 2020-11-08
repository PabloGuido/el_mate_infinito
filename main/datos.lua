local M = {}

M.primera_vez_que_se_inicia_el_player = false
M.url_del_player = "player/player#player"
M.player_puede_saltar = false
M.player_puede_romeper_rocas = false
M.player_puede_mover_rocas = false
M.ultima_plataforma_segura = ""

M.parpadeo = function (self)
	local p = go.get_position()
	go.set_position(vmath.vector3(self.ultima_plataforma_segura.x, self.ultima_plataforma_segura.y, p.z))
	go.set("#sprite", "tint.w", 0)
	go.animate("#sprite", "tint.w", go.PLAYBACK_LOOP_FORWARD, 1, go.EASING_LINEAR, 0.2)
	timer.delay(1, false, function()
		go.animate("#sprite", "tint.w", go.PLAYBACK_ONCE_FORWARD, 1, go.EASING_LINEAR, 0.2)
	end)
end

M.velocidad_de_plataformas = 100

return M