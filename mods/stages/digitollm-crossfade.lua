function onCreate()
	-- background shit
	makeLuaSprite('bgdigitollm', 'bgdigitollm', 0, 0);
	setScrollFactor('bgdigitollm', 0.9, 0.9);

	addLuaSprite('bgdigitollm', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end