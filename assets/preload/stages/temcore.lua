function onCreate()
  makeLuaSprite('bg','tem_bg',-650,-600)
  scaleObject('bg',0.9,0.9)
  makeLuaSprite('overlay','fil_tem',-600,-600)
  makeAnimatedLuaSprite('lights','pantalla_TEM',0,0)
  addAnimationByPrefix('lights','idle','TEM',24,true)
  scaleObject('lights',0.7,0.7)
  setObjectCamera('lights','other')
  setProperty('overlay.visible',false)
  setProperty('lights.visible',false)
  addLuaSprite('bg',false)
  addLuaSprite('overlay',true)
  addLuaSprite('lights',false)
end
function onStepHit()
  if curStep==892 then
    doTweenAlpha('hud','camHUD',0,1)
  end
  if curStep==957 then
    doTweenAlpha('hud2','camHUD',1,1)
    setProperty('overlay.visible',true)
  end
  if curStep==1149 then
    setProperty('lights.visible',true)
  end
  end