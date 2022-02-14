# Dungeon Crawler RPG

Codenamed *Project Cursed*, this is a personal game project using Game Maker Studio 2. The project is at the very early stages, with only basic movement currently being handled.

The castle map is rendered using a [DS Grid](https://docs.yoyogames.com/source/dadiospice/002_reference/data%20structures/ds%20grids/index.html). Each grid space uses a separate background image file for all four directions (North, South, East, West). Background image file names must follow a specific syntax in order to dynamically populate the grid. As new images are added to the Game Maker project, they are instantly added to the castle map.

Next steps to be done:
- Allow player to customize controls.
- Refactor code for greater simplicity.
- Add functionality for interactive objects, doors, and an inventory system.
