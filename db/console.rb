require("pry")
require_relative("../models/album")
require_relative("../models/artist")

artist1 = Artist.new({"name" => "Frank Zappa"})
artist2 = Artist.new({"name" => "Don Van Vliet"})
artist1.save()
artist2.save()

artist1.update = ({"name" => "Zank Frappa"})

artists = Artist.all()



binding.pry
nil