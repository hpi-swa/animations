This is a simple, interactive tools to use a tile painter. Drag-and-drop forms onto it to change the painter's brush. Toggle between #paint and #erase via the 'x' key on your keyboard. Flood fill the whole surface with a yellow/right click --- which predeces a confirmation dialog.

There is no undo at the moment.

If you are finished keep track of the painter's surface and discard both painter and painter tool.

Here is an example:

painter := AnimTilePainter new.
painter palette: (AnimTileParser parseFileNamed: 'terrain_atlas.png' skip: 32@32).
painter surface: Morph new.
painter surfaceExtent: 20@20.
painter tilesUnpacked inspect. "Drag-and-drop tiles from here."
AnimTilePainterTool openOn: painter.