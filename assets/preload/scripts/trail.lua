function onCreatePost()
	trailName = 0
	trailName2 = 0
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'No Animation' and not isSustainNote then
		trailFrameBF()
	end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'No Animation' and not isSustainNote then
		trailFrameDad()
	end
end

function trailFrameDad()
	trailName2 = trailName2 + 1
	makeAnimatedLuaSprite('dadTrail' .. trailName2,getProperty('dad.imageFile'),getProperty('dad.x'),getProperty('dad.y'))
	addAnimationByPrefix('dadTrail' .. trailName2,'anim', getProperty('dad.animation.frameName'), 24, false)
	addLuaSprite('dadTrail' .. trailName2, false)
	scaleObject('dadTrail' .. trailName2, 1, 1)
	setProperty('dadTrail' .. trailName2 .. '.alpha', 0.5)
	playAnim('dadTrail' .. trailName2, 'anim', true)
	doTweenAlpha('alpha' .. trailName2,'dadTrail' .. trailName2,0,0.5)
	setProperty('dadTrail' .. trailName2 .. '.offset.x', getProperty('dad.offset.x'))
	setProperty('dadTrail' .. trailName2 .. '.offset.y', getProperty('dad.offset.y'))
	setObjectOrder('dadTrail' .. trailName2, getObjectOrder('dadGroup')-1)
	setBlendMode('dadTrail' .. trailName2, 'add');

	if (getProperty('dad.animation.curAnim.name') == 'singLEFT') then
		doTweenX('left2' .. trailName2, 'dadTrail' .. trailName2, getProperty('dad.x') + getProperty('dad.offset.x') - 150, 0.3)
	elseif (getProperty('dad.animation.curAnim.name') == 'singDOWN') then
		doTweenY('down2' .. trailName2, 'dadTrail' .. trailName2, getProperty('dad.y') + getProperty('dad.offset.y') + 150, 0.3)
	elseif (getProperty('dad.animation.curAnim.name') == 'singUP') then
		doTweenY('up2' .. trailName2, 'dadTrail' .. trailName2, getProperty('dad.y') + getProperty('dad.offset.y') - 150, 0.3)
	elseif (getProperty('dad.animation.curAnim.name') == 'singRIGHT') then
		doTweenX('right2' .. trailName2, 'dadTrail' .. trailName2, getProperty('dad.x') + getProperty('dad.offset.x') + 150, 0.3)
	end
end

function trailFrameBF()
	trailName = trailName + 1
	makeAnimatedLuaSprite('beefTrail' .. trailName,getProperty('boyfriend.imageFile'),getProperty('boyfriend.x'),getProperty('boyfriend.y'))
	addAnimationByPrefix('beefTrail' .. trailName,'anim', getProperty('boyfriend.animation.frameName'), 24, false)
	addLuaSprite('beefTrail' .. trailName, false)
	scaleObject('beefTrail' .. trailName, 1, 1)
	setProperty('beefTrail' .. trailName .. '.alpha', 0.5)
	playAnim('beefTrail' .. trailName, 'anim', true)
	doTweenAlpha('alpha2' .. trailName,'beefTrail' .. trailName,0,0.5)
	setProperty('beefTrail' .. trailName .. '.offset.x', getProperty('boyfriend.offset.x'))
	setProperty('beefTrail' .. trailName .. '.offset.y', getProperty('boyfriend.offset.y'))
	setObjectOrder('beefTrail' .. trailName, getObjectOrder('boyfriendGroup')-1)
	setBlendMode('beefTrail' .. trailName, 'add');
end