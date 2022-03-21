function onCreate()
	-- background shit
	makeLuaSprite('bgdarkocean', 'bgdarkocean', 0, 0);
	setScrollFactor('bgdarkocean', 0.9, 0.9);

	addLuaSprite('bgdarkocean', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end