User.destroy_all
u1 = User.create :email => 'craigsy@ga.co'
u2 = User.create :email => 'jonesy@ga.co'

Foodtype.destroy_all
f1 = Foodtype.create :title => 'Vegetarian Friendly'
f2 = Foodtype.create :title => 'Vegan Friendly'
f3 = Foodtype.create :title => 'Gluten Free'
f4 = Foodtype.create :title => "Dairy Free"

Recipe.destroy_all

r1 = Recipe.create(:name => 'Acai Bowl Recipe',:food_desc => 'Acai is one of the best known sources of antioxidants. Antioxidants are plant-based chemicals which are great for overall health and fighting free radicals within the body.',:prep_time => '10 mins',:cook_time => '10 mins',:no_of_serves => '2 Serves', :recipe_type => 'Stater',:ingredients => '4 tbs acai powder,1 cup frozen raspberries
1 cup frozen strawberries,1 cup almond milk or coconut water,1/2 cup baby spinach leaves
1 tsp honey,Banana,Almonds,Blueberries,Chia Seeds',:image => 'http://eatwildgreens.com/wp-content/uploads/2017/09/AcaiBowl-1024x723.jpg',:country => 'Australia', :city => 'Sydeny', :procedure => "Blend the acai powder, frozen berries, milk, spinach leaves and honey together. Add a little more almond milk or water if it is too thick. The texture should be a little thicker than a regular smoothie.
Add your favourite toppings!
Some other great topping ideas are: Shaved coconut, Bee pollen, Kiwi fruit, Granola,Peanut butter")



r2 = Recipe.create( :name => 'Mediterranean-style vegie focaccias',  :food_desc => 'Mediterranean-style vegie focaccias', :prep_time => '10 mins', :cook_time => '10 mins',:no_of_serves => '4 Serves',:recipe_type => 'Mains', :ingredients => "olive oil spray,2 focaccia rolls, halved lengthways,4 teaspoons basil pesto 400g cherry tomatoes,1/4 cup oil-free sun-dried tomatoes, chopped,11/2 cups quartered button mushrooms,1/2 eggplant, sliced, chargrilled,1 red capsicum, diced,1 cup grated reduced-fat mozzarella or tasty cheese,2 cups rocket.",:image => 'http://res.cloudinary.com/dbenxy2yz/image/upload/v1522564947/ugxucgl392wmxwoir9cy.jpg',:country => 'Australia', :city => 'Sydeny', :procedure => "Step 1 Preheat oven to 190°C. Lightly grease a large baking tray and line with baking paper. Place focaccia halves on prepared tray.Step 2 Spread pesto onto focaccia halves. Top with cherry tomatoes and remaining vegetables, except rocket. Sprinkle with cheese.Step 3 Spray focaccias with oil. Bake for 10–12 minutes, or until cheese melts and crust is slightly golden.Step 4 Top focaccias with rocket and season with black pepper. Serve.")


r3 = Recipe.create( :name => 'Lemon, chilli and garlic spaghetti', :food_desc => 'Lemon, chilli and garlic spaghetti', :prep_time => '15 mins', :cook_time => '15 mins', :no_of_serves => '5 Serves',:recipe_type => 'Mains', :ingredients => "320g wholemeal spaghetti,2 tablespoons finely grated lemon rind ,3 long red chillies, finely chopped
,1 small red birdseye chilli, finely chopped,3 cloves garlic, finely chopped,1/2 cup finely chopped flat-leaf parsley,1/4 cup chopped drained capers (optional),2 tablespoons lemon juice
,extra virgin olive oil, to serve (optional),lemon wedges, to serve", :image => 'http://res.cloudinary.com/dbenxy2yz/image/upload/v1522564950/exligapv4diw4epiolau.jpg',:country => 'Australia', :city => 'Sydeny', :procedure => "Step 1 Cook pasta following packet instructions. Drain and return to pan.

Step 2  Meanwhile, combine the lemon rind, chillies, garlic and parsley in a bowl.

Step 3  Add chilli mixture, capers (if using) and juice to pasta. Season with freshly ground black pepper and gently toss until combined.

Step 4  Divide pasta between serving bowls, drizzle with olive oil (if using) and serve immediately with lemon wedges.")

r4 = Recipe.create(:name => 'Sweet potato with black beans jalapeno and avocado', :food_desc => 'Sweet potato with black beans jalapeno and avocado', :prep_time => '45 mins', :cook_time => '45 mins', :no_of_serves => '6 Serves',:recipe_type => 'Mains', :ingredients => "4 small sweet potatoes (about 200–250g each; see tip),400g can black beans, rinsed, drained
,2 large vine-ripened tomatoes, diced,2 shallots, thinly sliced,1 long jalapeño or green chilli, seeded, finely chopped,2 tablespoons chopped coriander leaves, plus extra, to garnish
,1/2 cup grated reduced-fat cheddar,1/2 firm ripe avocado, diced,4 cups mixed salad leaves, to serve
", :image => 'http://res.cloudinary.com/dbenxy2yz/image/upload/v1522564950/zbntbpl5tnckg8pb95zk.jpg',:country => 'Australia', :city => 'Sydeny', :procedure => "Step1 Preheat oven to 180°C. Line a large baking tray with baking paper. Scrub sweet potatoes and pat dry with paper towel; prick all over with a fork. Place potatoes on prepared tray; bake, turning after 20 minutes, for 40–45 minutes, or until soft when pierced with a skewer. Leave cooked potatoes to cool for 10 minutes.

Step 2 Meanwhile, make filling: Mix beans with tomatoes, shallots, jalapeño (or chilli), coriander and half the cheese in a large bowl; season with cracked black pepper.

Step 3 Score potato tops lengthways with a long cut. Open potatoes gently; mash flesh lightly with a fork. Spoon one-quarter of the filling into each potato; scatter with remaining cheese. Return potatoes to oven and bake for another 5–10 minutes, or until filling is hot and cheese melts.

Step 4 Top potatoes with avocado, garnish with extra coriander and serve with mixed salad leaves.")

r5 = Recipe.create(:name => 'Vegetarian sausages with balsamic onions and pea mash')

r1.foodtypes << f1
r2.foodtypes << f1 << f2
r3.foodtypes << f1 << f3
r4.foodtypes << f1 << f4
