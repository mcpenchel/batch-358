###############
##### CRUD ####
###############
### CREATE
paulaner = Beer.new(name: "Weiss Paulaner", style: "Weiss", degrees_of_alcohol: "5")
paulaner.save

Beer.create(name: "Wine beer", style: "Red", degrees_of_alcohol: 10)

### READ

Beer.count
Beer.all # Returns an ActiveRecord::Relation which is JUST LIKE AN ARRAY
Beer.find(2)
Beer.first
Beer.last
Beer.find_by(style: "Red") # Returns the first row found that meets the criteria
Beer.where(style: "Red") # Returns an ActiveRecord::Relation which is JUST LIKE AN ARRAY
Beer.where("style LIKE ?", "%Red%")

### UPDATE

wine_beer = Beer.find(2)
wine_beer.style = "Red Ale"
wine_beer.save

wine_beer.update(name: "Casillero del Diablo Beer")

### DELETE

wine_beer = Beer.find(2)
wine_beer.destroy
# wine_beer.delete # DON'T USE IT!!!
