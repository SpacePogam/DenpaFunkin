function onCreate()
	-- background shit
	makeLuaSprite('bgvolcano', 'bgvolcano', 0, 0);
	setScrollFactor('bgvolcano', 0.9, 0.9);

	addLuaSprite('bgvolcano', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end