EndorEwokLakeVillage02ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	planet = "endor",

	mobiles = {
		{"gondula_loremaster",300, -473.5, 2.1, -5051.7, 147, 0},
		{"gondula_veteran",300, -479.0, 1.0, -5040.9, -26, 0},
		{"gondula_tribesman",300, -498.5, 0.5, -5009.5, -99, 0},
		{"gondula_tribesman",300, -498.5, 0.5, -5011.6, -99, 0},
		{"gondula_matriarch",300, -500.9, 0.5, -5010.5, -99, 0},
		{"gondula_worker",300, -516.4, 0.5, -5010.6, 163, 0},
		{"gondula_worker",300, -513.9, 1.0, -5028.6, 171, 0},
		{"weathered_gondula_shaman",300, -503.7, 2.1, -5078.3, -16, 0},
		{"gondula_veteran",300, -506.4, 2.1, -5077.2, 41, 0},
		{"gondula_veteran",300, -506.7, 2.1, -5074.5, 110, 0},
		{"gondula_veteran",300, -503.1, 2.1, -5073.8, -150, 0},
		{"skilled_gondula_worker",300, -535.4, 1.0, -5094.8, 131, 0},
		{"skilled_gondula_worker",300, -538.4, 1.0, -5096.1, -140, 0},
		{"gondula_tribesman",300, -538.1, 1.0, -5078.9, -1, 0},
		{"gondula_matriarch",300, -537.6, 1.0, -5045.6, 176, 0},
		{"gondula_worker",300, -539.4, 1.0, -5030.8, -72, 0},
		{"seasoned_gondula_warrior",300, -539.9, 1.0, -5028.3, -120, 0},
		{"gondula_cub",300, -555.5, 2.1, -5059.7, 178, 0},
		{"gondula_cub",300, -552.4, 2.1, -5060.6, 98, 0},
		{"gondula_cub",300, -554.2, 2.1, -5064.5, -25, 0},
		{"gondula_cub",300, -558.6, 2.1, -5064.2, -177, 0},
		{"gondula_matriarch",300, -562.1, 1.0, -5067.8, -73, 0},
		{"gondula_shaman",300, -560.1, 1.0, -5079.0, -175, 0},
		{"gondula_worker",300, -565.9, 1.0, -5080.2, 126, 0},
		{"gifted_gondula_shaman",300, -574.4, 1.9, -5058.2, -96, 0},
		{"wise_gondula_ritualist",300, -575.9, 1.0, -5076.9, 60, 0},
		{"gifted_gondula_shaman",300, -590.3, 2.1, -5064.4, -43, 0},
		{"gondula_worker",300, -588.5, 1.0, -5047.1, -3, 0},
		{"gondula_ritualist",300, -583.1, 0.5, -5015.0, -3, 0},
		{"gondula_ritualist",300, -598.2, 0.5, -5015.3, -3, 0},
		{"seasoned_gondula_warrior",300, -612.8, 2.1, -5099.6, -19, 0},
		{"seasoned_gondula_warrior",300, -616.7, 2.1, -5098.4, 81, 0},
		{"seasoned_gondula_warrior",300, -615.0, 2.1, -5095.4, 119, 0},
		{"gifted_gondula_shaman",300, -614.2, 1.9, -5098.2, -156, 0},
		{"gondula_elder",300, -659.3, 1.0, -5110.5, -46, 0},
		{"gondula_elder",300, -661.8, 1.0, -5110.6, 5, 0},
		{"gondula_elder",300, -664.7, 1.0, -5109.4, 53, 0},
		{"gondula_chief",300, -663.4, 1.0, -5105.5, 153, 0},
		{"hardened_gondula_warrior",300, -659.7, 1.0, -5106.6, -154, 0},
		{"gifted_gondula_shaman",300, -645.8, 2.1, -5107.6, 134, 0},
		{"hardened_gondula_warrior",300, -642.9, 1.0, -5071.8, -2, 0},
		{"hardened_gondula_warrior",300, -648.9, 1.0, -5071.8, -2, 0},
		{"hardened_gondula_warrior",300, -645.9, 1.0, -5071.8, -2, 0},
		{"hardened_gondula_warrior",300, -676.9, 1.0, -5071.8, -2, 0},
		{"hardened_gondula_warrior",300, -673.9, 1.0, -5071.8, -2, 0},
		{"hardened_gondula_warrior",300, -679.9, 1.0, -5071.8, -2, 0},
		{"wise_gondula_ritualist",300, -679.4, 2.1, -5079.0, -76, 0},
		{"gifted_gondula_shaman",300, -680.0, 1.9, -5109.8, -136, 0},
		{"gondula_veteran",300, -681.6, 0.5, -5031.1, -44, 0},
		{"gondula_veteran",300, -672.3, 0.5, -5031.1, 26, 0},
		{"gondula_worker",300, -638.4, 0.5, -5028.9, 82, 0},
		{"gondula_worker",300, -632.9, 0.5, -5023.5, -169, 0},
		{"gondula_worker",300, -620.9, 1.0, -5055.4, -170, 0},
	}
}

registerScreenPlay("EndorEwokLakeVillage02ScreenPlay", true)

function EndorEwokLakeVillage02ScreenPlay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
	end
end

function EndorEwokLakeVillage02ScreenPlay:spawnMobiles()
	local mobiles = self.mobiles

	for i = 1, #mobiles do
		local mob = mobiles[i]

		local pMobile = spawnMobile(self.planet, mob[1], mob[2], mob[3], mob[4], mob[5], mob[6], mob[7])

		if pMobile ~= nil then
			AiAgent(pMobile):addObjectFlag(AI_STATIONARY)
		end
	end
end
