function onCreate()
	-- background shit
	makeLuaSprite('bgruinsd', 'bgruinsd', 0, 0);
	setScrollFactor('bgruinsd', 0.9, 0.9);
		makeLuaSprite('blueoverlay', 'blueoverlay', 0, 0);
	setScrollFactor('blueoverlay', 1, 1);

	addLuaSprite('bgruinsd', false);
	addLuaSprite('blueoverlay', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end