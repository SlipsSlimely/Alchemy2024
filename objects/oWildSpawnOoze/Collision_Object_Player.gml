/// @description Insert description here
if (battleTime == 0)
{
	NewEncounter([global.enemies.ooze], sNewMoonBG, sForestFG);
	battleTime++;
}
else
{
	instance_destroy();
}

