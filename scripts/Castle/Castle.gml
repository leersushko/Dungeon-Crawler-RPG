// Core functions for building the castle map and navigating through it

// Create DS grid for castle map sized 2x2
global.castle_map = ds_grid_create(2, 2);

// Populate castle_map DS grid with IDs (i = width, j = height)
for (var i = 0; i < 2; i += 1) {
	for (var j = 0; j < 2; j += 1) {
		ds_grid_set(global.castle_map, i, j, true);
	}
}

// Create global variables for grid coordinates with default coordinates 2,2
global.map_x = 2;
global.map_y = 2;

// Create global variable for direction faced with default direction West
global.facing_direction = "W";

// Create global string for finding room name
global.next_room = "";

// Update next_room with new room id for when player moves
function get_next_room(){
	// Stores a string built from DS grid coordinates and direction faced
	// All background image file names must conform to this structure to be usable
	global.next_room = "rm_" + string(global.map_x) + "_" + string(global.map_y)
												+ "_" + string(global.facing_direction);
}

// Move the player
function make_a_move(){
	// Update next_room
	get_next_room();
	// Update background image draw using next_room to locate the correct image file
	layer_background_sprite(layer_background_get_id("Background"), asset_get_index(global.next_room));
	// Create and destroy interactive objects in sight (unfinished - won't affect game to run)
	draw_room_objects();
}

// Move player forward
function move_forward(){
	// Check which direction player is currently facing
	switch (global.facing_direction)
		{
		// If facing north
		case "N":
			// Update grid space by y - 1
			global.map_y -= 1;
			break;
		// If facing south
		case "S":
			// Update grid space by y + 1
			global.map_y += 1;
			break;
		// If facing east
		case "E":
			// Update grid space by x + 1
			global.map_x += 1;
			break;
		// If facing west
		case "W":
			// Update grid space by x - 1
			global.map_x -= 1;
			break;
		}
}

// Move player backwards
function move_backwards(){
	// Check which direction player is currently facing
	switch (global.facing_direction)
		{
		// If facing north
		case "N":
			// Update grid space by y + 1
			global.map_y += 1;
			break;
		// If facing south
		case "S":
			// Update grid space by y - 1
			global.map_y -= 1;
			break;
		// If facing east
		case "E":
			// Update grid space by x - 1
			global.map_x -= 1;
			break;
		// If facing west
		case "W":
			// Update grid space by x + 1
			global.map_x += 1;
			break;
		}
}

// Check whether the space in front of the player isn't blocked
function check_for_free_space_ahead(){
	// Check which direction player is currently facing
	switch (global.facing_direction)
		{
		// If facing north
		case "N":
			// Return true if grid space y - 1 is a free space
			if (sprite_exists(asset_get_index("rm_" + string(global.map_x) + "_" + string(global.map_y - 1) + "_" + string(global.facing_direction)))) {
				return true;
			}
			break;
		// If facing south
		case "S":
			// Return true if grid space y + 1 is a free space
			if (sprite_exists(asset_get_index("rm_" + string(global.map_x) + "_" + string(global.map_y + 1) + "_" + string(global.facing_direction)))) {
				return true;
			}
			break;
		// If facing east
		case "E":
			// Return true if grid space x + 1 is a free space
			if (sprite_exists(asset_get_index("rm_" + string(global.map_x + 1) + "_" + string(global.map_y) + "_" + string(global.facing_direction)))) {
				return true;
			}
			break;
		// If facing west
		case "W":
			// Return true if grid space x - 1 is a free space
			if (sprite_exists(asset_get_index("rm_" + string(global.map_x - 1) + "_" + string(global.map_y) + "_" + string(global.facing_direction)))) {
				return true;
			}
			break;
		}
}

// Check whether the space behind the player isn't blocked
function check_for_free_space_behind(){
	// Check which direction player is currently facing
	switch (global.facing_direction)
		{
		// If facing north
		case "N":
			// Return true if grid space y + 1 is a free space
			if (sprite_exists(asset_get_index("rm_" + string(global.map_x) + "_" + string(global.map_y + 1) + "_" + string(global.facing_direction)))) {
				return true;
			}
			break;
		// If facing south
		case "S":
			// Return true if grid space y - 1 is a free space
			if (sprite_exists(asset_get_index("rm_" + string(global.map_x) + "_" + string(global.map_y - 1) + "_" + string(global.facing_direction)))) {
				return true;
			}
			break;
		// If facing east
		case "E":
			// Return true if grid space x - 1 is a free space
			if (sprite_exists(asset_get_index("rm_" + string(global.map_x - 1) + "_" + string(global.map_y) + "_" + string(global.facing_direction)))) {
				return true;
			}
			break;
		// If facing west
		case "W":
			// Return true if grid space x + 1 is a free space
			if (sprite_exists(asset_get_index("rm_" + string(global.map_x + 1) + "_" + string(global.map_y) + "_" + string(global.facing_direction)))) {
				return true;
			}
			break;
		}
}

// Create and destroy interactive objects in sight for when player moves
function draw_room_objects(){
	// Add switch statement to update room objects at certain depth layer based on room background
}