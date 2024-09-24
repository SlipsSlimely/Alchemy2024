/// @description Insert description here
if (battleTime == 0)
{
	NewEncounter([global.enemies.human], sNewMoonBG, sForestFG);
	battleTime++;
}
else
{
	instance_destroy();
}

