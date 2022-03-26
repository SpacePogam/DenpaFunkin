function onCreate()
	-- background shit
	makeLuaSprite('bgdarknessjewel', 'bgdarknessjewel', 0, 0);
	setScrollFactor('bgdarknessjewel', 0.9, 0.9);

	addLuaSprite('bgdarknessjewel', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end