# Project - Healthy Food App

Project link for [Healthy Food App](https://herokuprojectga1.herokuapp.com/).

This website is the ideal place where you can find healthy recipes that will help in making changes to your lifestyle. You can also find vegetarian, vegan, gluten-free as well as lactose-free recipes. On becoming a member, you can not only view recipes but also add your own creations for the world to discover. Feel free to share these recipes with friends and family.


### Built With:
Ruby on rails,
css

### Bits of code

Learnt how mapping works:

```
@recipes =  @current_user.favorite_recipes.map(&:recipe)

```

Learnt how the search works:

```
def self.search(search)
  where("name ILIKE ? OR ingredients ILIKE ? OR procedure ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
end
```

Learnt how to validate the uniqueness :

```
validates :recipe_id, :uniqueness => { :scope => :user_id }
```


## Future releases:
Phase2 of the the project would be to make this a food based travel guide where users could share their food experiences they had while they were travelling. Site visitors will be able to filter recipes based on cities and countries.

Also, I would like to add Reviews and Ratings for each recipe. Along with that I would like to integrate a google map based search as well where each recipe would be represented by a pin on the map.


## Credits
Special thanks to Joel for helping out at every stage of the project. Also a big thanks to the amazing TA's - John and Theo!


## License
License under MIT
