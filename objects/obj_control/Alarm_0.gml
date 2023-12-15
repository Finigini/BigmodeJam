/// @description every second

alarm[0] = 60;

if timeSeconds < 59 and win == false
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
else if win == false
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