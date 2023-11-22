
-- create tiles table
function lay_tiles(xmin, xmax, ymin, ymax, tiles, tile_name)
  local i = #tiles
	for x = xmin, xmax-1 do
		for y = ymin, ymax-1 do
			i = i + 1
			tiles[i] = {name = tile_name, position = {x, y}}
		end
	end
end

local dimension_count = 1 --how many dimensions appeared in game 
function create_dimension(surface_width, surface_height)
  local surface = game.create_surface("pocket-dimension-"..dimension_count, {width = surface_width, height = surface_height})
  dimension_count = dimension_count + 1
  surface.daytime = 0.5
  surface.freeze_daytime = true

  surface.request_to_generate_chunks({surface_width, surface_height})
	surface.force_generate_chunk_requests()
  surface.destroy_decoratives({})
  for k,v in pairs(surface.find_entities())do entity.destroy(v) end
  
  local tiles = {}
  lay_tiles(-(surface_width/2), surface_width/2, -(surface_height/2), surface_height/2, tiles, "tutorial-grid") -- tile will be pocket-dimension-tile
  surface.set_tiles(tiles)
end
