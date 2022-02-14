/// @description Insert description here
// You can write your code in this editor

// Press A to turn left
// Check if A key is pressed -- should be updated so player can customize key
if keyboard_check_pressed(ord("A")) {
	// Check if the player is ready to move (true by default)
	if global.can_move {
		// Play footstep sound (random choice from 3 sounds) with channel priority 10, no looping
		audio_play_sound(choose(footstep1, footstep2, footstep3), 10, false);
		// Set a half-second delay before player can move again
		global.can_move = false;
		alarm[0] = (room_speed * 0.5);
		// Check which direction player is currently facing
		switch (global.facing_direction)
			{
			// If facing north
			case "N":
				// Face west
				global.facing_direction = "W";
				// Update the room draw
				make_a_move();
				break;
			// If facing west
			case "W":
				// Face south
				global.facing_direction = "S";
				// Update the room draw
				make_a_move();
				break;
			// If facing south
			case "S":
				// Face east
				global.facing_direction = "E";
				// Update the room draw
				make_a_move();
				break;
			// If facing east
			case "E":
				// Face north
				global.facing_direction = "N";
				// Update the room draw
				make_a_move();
				break;
			}
	}
}

// Press D to turn right
// Check if D key is pressed -- should be updated so player can customize
if keyboard_check_pressed(ord("D")) {
	// Check if the player is ready to move (true by default)
	if global.can_move {
		// Play footstep sound (random choice from 3 sounds) with channel priority 10, no looping
		audio_play_sound(choose(footstep1, footstep2, footstep3), 10, false);
		// Set a half-second delay before player can move again
		global.can_move = false;
		alarm[0] = (room_speed * 0.5);
		// Check which direction player is currently facing
		switch (global.facing_direction)
			{
			// If facing north
			case "N":
				// Face east
				global.facing_direction = "E";
				// Update the room draw
				make_a_move();
				break;
			// If facing east
			case "E":
				// Face south
				global.facing_direction = "S";
				// Update the room draw
				make_a_move();
				break;
			// If facing south
			case "S":
				// Face west
				global.facing_direction = "W";
				// Update the room draw
				make_a_move();
				break;
			// If facing west
			case "W":
				// Face north
				global.facing_direction = "N";
				// Update the room draw
				make_a_move();
				break;
			}
	}
}

// Press W to move forward
// Check if W key is pressed -- should be updated so player can customize key
if keyboard_check_pressed(ord("W")) {
	// Check if the player is ready to move (true by default)
	if global.can_move {
		// Only do the following if left shift key (sprinting) is not pressed
		if !keyboard_check_direct(vk_lshift) {
			// Set a half-second delay before player can move again
			global.can_move = false;
			alarm[0] = (room_speed * 0.5);
		}
		// Do the following if there is a free space ahead to move into
		if (check_for_free_space_ahead()) {
			// Play footstep sound (random choice from 3 sounds) with channel priority 10, no looping
			audio_play_sound(choose(footstep1, footstep2, footstep3), 10, false);
			// Move the player forward
			move_forward();
			// Update the room draw
			make_a_move();
		}
	}
}

// Press S to move backwards
// Check if S key is pressed -- should be updated so player can customize key
if keyboard_check_pressed(ord("S")) {
	// Check if the player is ready to move (true by default)
	if global.can_move {
		// Set a half-second delay before player can move again
		global.can_move = false;
		alarm[0] = (room_speed * 0.5);
		// Do the following if there is a free space behind to move into
		if (check_for_free_space_behind()) {
			// Play footstep sound (random choice from 3 sounds) with channel priority 10, no looping
			audio_play_sound(choose(footstep1, footstep2, footstep3), 10, false);
			// Move the player forward
			move_backwards();
			// Update the room draw
			make_a_move();
		}
	}
}