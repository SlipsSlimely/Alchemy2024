/// @description Insert description here
if (battleTime == 0)
{
	NewEncounter([global.enemies.wolf], sNewMoonBG, sForestFG);
	battleTime++;
}
else
{
	instance_destroy();
}

