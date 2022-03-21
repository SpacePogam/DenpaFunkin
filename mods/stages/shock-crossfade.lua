function onCreate()
	-- background shit
	makeLuaSprite('bgshock', 'bgshock', 0, 0);
	setScrollFactor('bgshock', 0.9, 0.9);

	addLuaSprite('bgshock', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end