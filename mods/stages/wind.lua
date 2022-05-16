function onCreate()
	-- background shit
	makeLuaSprite('bgwind01', 'bgwind01', -300, 0);
	setScrollFactor('bgwind01', 0.1, 0.1);

	addLuaSprite('bgwind01', false);

	makeLuaSprite('bgwind02', 'bgwind02', -200, 50);
	setScrollFactor('bgwind02', 1, 1);

	addLuaSprite('bgwind02', false);

	makeLuaSprite('bgwind05', 'bgwind04', -200, 50);
	setScrollFactor('bgwind05', 1, 1);

	addLuaSprite('bgwind05', false);

	makeLuaSprite('bgwind03', 'bgwind03', -200, 50);
	setScrollFactor('bgwind03', 1.1, 1);

	addLuaSprite('bgwind03', false);

	makeLuaSprite('bgwind04', 'bgwind05', -300, 220);
	setScrollFactor('bgwind04', 1.4, 1);

	addLuaSprite('bgwind04', true);

	makeLuaSprite('bgwind06', 'bgwind06', 150, 220);
	setScrollFactor('bgwind06', 1.4, 1);

	addLuaSprite('bgwind06', true);

	makeLuaSprite('bgwind07', 'bgwind07', -100, 400);
	setScrollFactor('bgwind07', 1.3, 1);

	addLuaSprite('bgwind07', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end