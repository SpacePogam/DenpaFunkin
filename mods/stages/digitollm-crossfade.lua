function onCreate()
	-- background shit
	makeLuaSprite('bgdigitollm', 'bgdigitollm', 0, 0);
	setScrollFactor('bgdigitollm', 0.9, 0.9);
	makeLuaSprite('frdigitollm', 'frdigitollm', 0, 0);
	setScrollFactor('frdigitollm', 0.9, 0.9);

	addLuaSprite('bgdigitollm', false);
	addLuaSprite('frdigitollm', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end