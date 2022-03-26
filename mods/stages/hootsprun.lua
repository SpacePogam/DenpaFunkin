function onCreate()
	-- background shit
	makeLuaSprite('hootsprun', 'hootsprun', 0, 0);
	setScrollFactor('hootsprun', 0.9, 0.9)

	addLuaSprite('hootsprun', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end