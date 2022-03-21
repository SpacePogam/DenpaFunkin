function onCreate()
	-- background shit
	makeLuaSprite('bgruins', 'bgruins', 0, 0);
	setScrollFactor('bgruins', 0.9, 0.9);

	addLuaSprite('bgruins', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end