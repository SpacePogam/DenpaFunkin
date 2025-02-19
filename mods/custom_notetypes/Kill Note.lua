function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Kill Note' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'kill_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0); --custom notesplash color, why not
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let BF's notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

local shootAnims = {"LEFTshoot", "DOWNshoot", "UPshoot", "RIGHTshoot"}
local dodgeAnims = {"dodgeLEFT", "dodgeDOWN", "dodgeUP", "dodgeRIGHT"}
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Kill Note' then
		if difficulty == 1 then
			playSound('wellwellwell', 0.5);
		end
		if getProperty('dad.curCharacter') == 'thunder' then
			characterPlayAnim('dad', shootAnims[direction + 1], true);
		elseif getProperty('dad.curCharacter') == 'thunder-scared' then
			curDad = getProperty('dad.curCharacter');
			setProperty('dad.curCharacter', 'thunder');
			characterPlayAnim('dad', shootAnims[direction + 1], true);
			runTimer('shootanim', 1, 1);
		end
		setProperty('dad.specialAnim', true);
		if getProperty('bf.curCharacter') == 'norman' then
			characterPlayAnim('norman', dodgeAnims[direction + 1], true);
		else
			characterPlayAnim('norman', 'dodge', true);
		end
		setProperty('norman.specialAnim', true);
		cameraShake('camGame', 0.01, 0.2);
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Kill Note' and difficulty == 1 then
		setProperty('health', -1);
		playSound('wellwellwell', 0.5);
	elseif noteType == 'Kill Note' and difficulty == 0 then
		setProperty('health', getProperty('health')-0.8);
		runTimer('bleed', 0.2, 20);
		playSound('wellwellwell', 0.6);
		characterPlayAnim('norman', 'hurt', true);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if tag == 'bleed' then
		setProperty('health', getProperty('health')-0.001);
	end
	if tag == 'shootanim' then
		setProperty('dad.curCharacter', curDad);
	end
end