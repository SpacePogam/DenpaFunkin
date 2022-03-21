function onCreate()
	-- background shit
	makeLuaSprite('bginferno', 'bginferno', 0, 0);
	setScrollFactor('bginferno', 0.9, 0.9);

	addLuaSprite('bginferno', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end