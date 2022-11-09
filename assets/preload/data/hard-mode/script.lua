local op = 0.5; --opacity, change if you want
function onStepHit()
  if curStep==1279 then
    makeAnimatedLuaSprite('l', 'characters/Sens', 100, 335) --character pos
    addAnimationByIndices('l', 'singLEFTghost', 'Sans Left', '26', 24) --make sure the indice is the last one on the xml, otherwise it won't look right
    setProperty('l.alpha', 0)
    setProperty('l.offset.x', 15) --change these to match the character offsets
    setProperty('l.offset.y', -7)
    addLuaSprite('l', false)
    makeAnimatedLuaSprite('r', 'characters/Sens', 100, 335) --character pos
    addAnimationByIndices('r', 'singRIGHTghost', 'Sans Rigth', '28', 24) --make sure the indice is the last one on the xml, otherwise it won't look right
    setProperty('r.alpha', 0)
    setProperty('r.offset.x', 21) --change these to match the character offsets
    setProperty('r.offset.y', -12)
    addLuaSprite('r', false)
    makeAnimatedLuaSprite('d', 'characters/Sens', 100, 335) --character pos
    addAnimationByIndices('d', 'singDOWNghost', 'Sans Down', '21', 24) --make sure the indice is the last one on the xml, otherwise it won't look right
    setProperty('d.alpha', 0)
    setProperty('d.offset.x', 17) --change these to match the character offsets
    setProperty('d.offset.y', -21)
    addLuaSprite('d', false)
    makeAnimatedLuaSprite('u', 'characters/Sens', 100, 335) --character pos
    addAnimationByIndices('u', 'singUPghost', 'Sans Up', '24', 24) --make sure the indice is the last one on the xml, otherwise it won't look right
    setProperty('u.alpha', 0)
    setProperty('u.offset.x', 0) --change these to match the character offsets
    setProperty('u.offset.y', 9)
    addLuaSprite('u', false)
end
if curStep==1534 then
  setProperty('u.visible',false)
  setProperty('d.visible',false)
  setProperty('r.visible',false)
  setProperty('l.visible',false)
end
end
function onUpdate(elapsed)
    if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
        doTweenAlpha('showleft', 'l', op, 0.1, 'linear')
    end
    if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
        doTweenAlpha('showright', 'r', op, 0.1, 'linear')
    end
    if getProperty('dad.animation.curAnim.name') == 'singUP' then
        doTweenAlpha('showup', 'u', op, 0.1, 'linear')
    end
    if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
        doTweenAlpha('showdown', 'd', op, 0.1, 'linear')
    end
end
function onTweenCompleted(t)
    if t == 'showleft' then
        doTweenAlpha('hideleft', 'l', 0, 0.3)
    end
    if t == 'showright' then
        doTweenAlpha('hideright', 'r', 0, 0.3)
    end
    if t == 'showup' then
        doTweenAlpha('hideup', 'u', 0, 0.3)
    end
    if t == 'showdown' then
        doTweenAlpha('hidedown', 'd', 0, 0.3)
    end
end