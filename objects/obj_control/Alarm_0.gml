/// @description every second

alarm[0] = 60;

if timeSeconds < 59
{
	timeSeconds++;
	if clockImage < 9
	{
		clockImage++;
	}
	else
	{
		clockImage = 0;
	}
}
else
{
	timeSeconds = 0;
	timeMinutes++;
}

if eggImage < 2
{
	eggImage++;
}
else
{
	eggImage = 0;
}