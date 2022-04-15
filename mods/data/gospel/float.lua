function onUpdate(elapsed)
songPos = getSongPosition()
		local currentBeat = (songPos/5000)*(curBpm/60)
setCharacterY('dad',getCharacterY('dad') + (math.sin(currentBeat) * 0.2))
function onMoveCamera(focus)
	if focus == 'boyfriend' then
		-- called when the camera focus on boyfriend
	elseif focus == 'dad' then
		setProperty('camFollowPos.y',getProperty('camFollowPos.y') + (math.sin(currentBeat) * 0.2))
	end
end
end