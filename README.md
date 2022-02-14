# Dungeon Crawler RPG

Codenamed *Project Cursed*, this is a personal game project using Game Maker Studio 2. The project is at the very early stages, with only basic movement currently being handled.

The castle map is rendered using a [DS Grid](https://docs.yoyogames.com/source/dadiospice/002_reference/data%20structures/ds%20grids/index.html). Each grid space uses a separate background image file for all four directions (North, South, East, West). Background image file names must follow a specific syntax in order to dynamically populate the grid upon running the program. For example, a valid image file name would be:

**rm_0_1_E**

The above background image is read by the Castle.gml script and assigned to grid space 0,1 while the player faces east. When the player presses the turn key, the direction is changed accordingly and the background image is updated. When the player presses the move forward or backward keys, the grid space is updated. An artificial delay is added between all maneuvers in order to simulate the player character's movement. 

As new images are added to the Game Maker project, they are instantly added to the castle map. This system is designed to allow for the creation of higher fidelity background environments in an external 3D graphics program, since Game Maker's 3D functionality is limited; the drawback of the current system is the added requirement of many background images.

For castle mapping and player movement functionality, please see:
- **scripts > Castle > Castle.gml**
- **objects/Player > Step_0.gml**

Next steps to be done:
- Add functionality for multiple draw layers for placing objects on top of background images.
- Add functionality for interactive objects which are drawn at certain layers and connected to certain grid spaces and directions.
- Add functionality for basic inventory system for picking up and storing key objects.
- Add functionality for doors which require opening and may require using keys to unlock.
- Allow player to customize controls.
- Refactor code for greater simplicity.
