/// @description Insert description here
if (battleTime == 0)
{
	NewEncounter([global.enemies.fly], sNewMoonBG, sForestFG);
	battleTime++;
}
else
{
	instance_destroy();
}

