local flipped = false;

function onEvent(name, value1, value2)
	if name == 'FlipUI' then
		if flipped then
		doTweenAngle('unbruh', 'camHUD', 360, 0.1, 'linear')
		flipped = false;
		else 
		doTweenAngle('bruh','camHUD', 180, 0.1, 'linear')
		flipped = true;
		end
	end
end