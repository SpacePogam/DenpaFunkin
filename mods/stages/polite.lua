function onCreate()
	-- background shit
	makeLuaSprite('bgpolite', 'bgpolite', 0, 0);
	setScrollFactor('bgpolite', 0.9, 0.9);

	addLuaSprite('bgpolite', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end