function onEvent(n,v1,v2)


	if n == 'Flash Camera 4' then
		if v2 == 'yeah' then
	   		makeLuaSprite('flash', '', -2000, -2000);
        		makeGraphic('flash',1280,720,'FF0000')
	      		addLuaSprite('flash', true);
	      		setLuaSpriteScrollFactor('flash',0,0)
	      		setProperty('flash.scale.x',20)
	      		setProperty('flash.scale.y',20)
	      		setProperty('flash.alpha',0)
			setProperty('flash.alpha',1)
			doTweenAlpha('flTw','flash',0,v1,'linear')
			setBlendMode('flash','add');
		else
	   		makeLuaSprite('flash', '', -2000, -2000);
        		makeGraphic('flash',1280,720,'FF0000')
	      		addLuaSprite('flash', true);
	      		setLuaSpriteScrollFactor('flash',0,0)
	      		setProperty('flash.scale.x',20)
	      		setProperty('flash.scale.y',20)
	      		setProperty('flash.alpha',0)
			setProperty('flash.alpha',1)
			doTweenAlpha('flTw','flash',0,v1,'linear')
		end
	end
end