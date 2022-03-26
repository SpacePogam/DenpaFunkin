function onCreate()
	-- background shit
	makeLuaSprite('bgjewel', 'bgjewel', 0, 0);
	setScrollFactor('bgjewel', 0.9, 0.9);

	addLuaSprite('bgjewel', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end