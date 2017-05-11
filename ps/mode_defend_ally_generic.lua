------------------------------------------------------------
--- AUTHOR: PLATINUM_DOTA2 (Pooya J.)
--- EMAIL ADDRESS: platinum.dota2@gmail.com
------------------------------------------------------------

-------
BotsInit = require( "game/botsinit" );

local MyModule = BotsInit.CreateGeneric();

----------
Utility = require( GetScriptDirectory().."/ps/Utility")
----------

function  OnStart()
end

function OnEnd()
end

function GetDesire()
	local npcBot=GetBot();
	if npcBot:GetHealth()/npcBot:GetMaxHealth()<0.5 then
		return 0.0;
	end
	
	local Enemy=Utility.GetOurEnemy();
	
	if Enemy~=nil then
		return BOT_MODE_DESIRE_VERYHIGH;
	end
	
	return 0.0;
end

function Think()
end

--------
MyModule.OnStart = OnStart;
MyModule.OnEnd = OnEnd;
MyModule.Think = Think;
MyModule.GetDesire = GetDesire;
return MyModule;