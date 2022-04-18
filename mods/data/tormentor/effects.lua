local bfLosing = false
local dadLosing = false

function onUpdate(elapsed)
function opponentNoteHit(id, direction, noteType, isSustainNote)
cameraShake(game, 0.005, 0.2)
characterPlayAnim('gf', 'scared', true)
doTweenZoom('camerazoom','camGame',0.8,0.26,'quadInOut')
end
function goodNoteHit(id, direction, noteType, isSustainNote)
doTweenZoom('camerazoom','camGame',1.3,0.6,'quadInOut')
end
doTweenX('iconDadFadeEventTween', 'iconP2', 100, 0.001, 'linear');
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