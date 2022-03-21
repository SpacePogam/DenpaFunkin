function onCreate()
	-- background shit
	makeLuaSprite('bgwater', 'bgwater', 0, 0);
	setScrollFactor('bgwater', 0.9, 0.9);

	addLuaSprite('bgwater', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end