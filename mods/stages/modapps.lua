function onCreate()
	-- background shit
	makeLuaSprite('modapps', 'modapps', 0, 0);
	setScrollFactor('modapps', 0.9, 0.9)

	addLuaSprite('modapps', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end