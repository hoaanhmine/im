
local allowCountdown = false
function onStartCountdown()
setPropertyFromClass('GameOverSubstate', 'characterName', 'hdbf-dead');
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('mad');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
