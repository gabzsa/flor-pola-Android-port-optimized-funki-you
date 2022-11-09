function onCreate()
  makeLuaSprite('bg','sas1',-600,-600)
  makeLuaSprite('bg2','sas2',-600,-600)
  makeLuaSprite('bg3','sas3',-600,-600)
  setProperty('bg2.visible',false)
  setProperty('bg3.visible',false)
  addLuaSprite('bg',false)
  addLuaSprite('bg2',false)
  addLuaSprite('bg3',true)
end
function onStepHit()
  if curStep==1279 then
    setProperty('defaultCamZoom',1.35)
    doTweenAlpha('hud','camHUD',0,1)
  end
  if curStep==1534 then
    setProperty('defaultCamZoom',0.65)
    doTweenAlpha('hud2','camHUD',1,1)
    setProperty('bg2.visible',true)
    setProperty('bg3.visible',true)
  end
  end