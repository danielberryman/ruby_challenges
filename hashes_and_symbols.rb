# regular old hash
game_01 = {"name" => "monopoly", "players" => "2-8", "creator" => "John"}

# with symbols
game_01 = {:name => "monopoly", :players => "2-8", :creator => "John"}

# shorter and newer ways the Ruby interprets the same as symbols
game_01 = { name: "monopoly", players: "2-8", creator: "John"}

puts game_01[:players]
