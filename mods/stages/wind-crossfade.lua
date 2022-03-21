function onCreate()
	-- background shit
	makeLuaSprite('bgwind', 'bgwind', 0, 0);
	setScrollFactor('bgwind', 0.9, 0.9);

	addLuaSprite('bgwind', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end