/// @description This triggers a battle with a Cat enemy against the player
if (battleTime == 0)
{
	NewEncounter([global.enemies.cat], sNewMoonBG, sForestFG);
	battleTime++;
}
else
{
	instance_destroy();
}

