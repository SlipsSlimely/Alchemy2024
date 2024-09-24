/// @description Insert description here
if (battleTime == 0)
{
	NewEncounter([global.enemies.amalgam], sNewMoonBG, sForestFG);
	battleTime++;
}
else
{
	instance_destroy();
}

