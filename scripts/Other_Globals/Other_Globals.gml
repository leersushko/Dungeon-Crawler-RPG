// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Roll a die and return the result
function roll_die(die){
	// Die options: d4, d6, d8, d9, d12, d20
	switch (die)
			{
			case "d20":
				return irandom_range(1, 20);
				break;
			case "d12":
				return irandom_range(1, 12);
				break;
			case "d9":
				return irandom_range(0, 9);
				break;
			case "d8":
				return irandom_range(1, 8);
				break;
			case "d6":
				return irandom_range(1, 6);
				break;
			case "d4":
				return irandom_range(1, 4);
				break;
			}
}

// Macros for dice
#macro d20 roll_die("d20")
#macro d12 roll_die("d12")
#macro d9 roll_die("d9")
#macro d8 roll_die("d8")
#macro d6 roll_die("d6")
#macro d4 roll_die("d4")