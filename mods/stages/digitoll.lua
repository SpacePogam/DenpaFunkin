function onCreate()
	-- background shit
	makeLuaSprite('bgdigitoll', 'bgdigitoll', 0, 0);
	setScrollFactor('bgdigitoll', 1, 1);

	addLuaSprite('bgdigitoll', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end