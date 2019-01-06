# https://abbreviations.yourdictionary.com/articles/measurement-abbreviations.html
Measure.create(measure_type: Measure.measure_types[:mass], unit: 'milligrams', abbreviation: 'mg')
grams = Measure.create(measure_type: Measure.measure_types[:mass], unit: 'grams', abbreviation: 'g')
Measure.create(measure_type: Measure.measure_types[:mass], unit: 'kilograms', abbreviation: 'kg')
Measure.create(measure_type: Measure.measure_types[:mass], unit: 'ounces', abbreviation: 'oz')
Measure.create(measure_type: Measure.measure_types[:mass], unit: 'pounds', abbreviation: 'lb')

mls = Measure.create(measure_type: Measure.measure_types[:volume], unit: 'milliliters', abbreviation: 'ml')
Measure.create(measure_type: Measure.measure_types[:volume], unit: 'liters', abbreviation: 'l')
Measure.create(measure_type: Measure.measure_types[:volume], unit: 'teaspoons', abbreviation: 'tsp')
Measure.create(measure_type: Measure.measure_types[:volume], unit: 'tablespoons', abbreviation: 'tbsp')
Measure.create(measure_type: Measure.measure_types[:volume], unit: 'cups', abbreviation: 'c')
Measure.create(measure_type: Measure.measure_types[:volume], unit: 'quarts', abbreviation: 'qt')
Measure.create(measure_type: Measure.measure_types[:volume], unit: 'pints', abbreviation: 'pt')
Measure.create(measure_type: Measure.measure_types[:volume], unit: 'gallons', abbreviation: 'gal')

Measure.create(measure_type: Measure.measure_types[:distance], unit: 'millimeters', abbreviation: 'mm')
Measure.create(measure_type: Measure.measure_types[:distance], unit: 'centimeters', abbreviation: 'cm')
Measure.create(measure_type: Measure.measure_types[:distance], unit: 'inches', abbreviation: 'in')
Measure.create(measure_type: Measure.measure_types[:distance], unit: 'feet', abbreviation: 'ft')
# Measure.create(measure_type: Measure.measure_types[:distance], unit: 'meters', abbreviation: 'm')
# Measure.create(measure_type: Measure.measure_types[:distance], unit: 'kilometers', abbreviation: 'km')
# Measure.create(measure_type: Measure.measure_types[:distance], unit: 'yards', abbreviation: 'yd')
# Measure.create(measure_type: Measure.measure_types[:distance], unit: 'miles', abbreviation: 'mi')

count = Measure.create(measure_type: Measure.measure_types[:number], unit: 'count')
Measure.create(measure_type: Measure.measure_types[:number], unit: 'pinch')
Measure.create(measure_type: Measure.measure_types[:number], unit: 'dash')
Measure.create(measure_type: Measure.measure_types[:number], unit: 'to taste')
Measure.create(measure_type: Measure.measure_types[:number], unit: 'slice')

# kenji_kung_pao_chicken = Recipe.create!(
#   name: "Kenji Kung Pao Chicken",
#   steps: """
# 1. For the Chicken: Combine chicken, 1 tsp wine, 2 tsp soy sauce, 2 tsp cornstarch, and salt in a small bowl and turn until well mixed and chicken is evenly coated in a thin film of the cornstarch paste. Set aside.
# 2. For the Sauce: Combine honey, vinegar, 1 tbsp wine, 2 tsp soy sauce, and 1/2 tsp cornstarch in a small bowl. Stir together with a fork until no clumps of cornstarch remain.
# 3. To Stir-Fry: Pour a small amount of oil into the bottom of a large wok or skillet and rub around with a paper towel. Place over high heat and preheat until smoking. Add remaining oil and immediately add chiles and Sichuan peppercorns. Stir-fry until fragrant but not burnt, about 5 seconds. Immediately add chicken and stir-fry until there are no longer pink spots on the exterior (chicken will still be raw in center at this stage), 45 seconds to 1 1/2 minutes.
# 4. Add garlic and ginger and stir-fry until fragrant, about 10 seconds. Add scallions and peanuts and stir-fry for 30 seconds.
# 5. Add sauce ingredients and stir-fry until all the ingredients are coated evenly and the chicken is cooked through, about 1 minute, adding water 1 tablespoon at a time if necessary to keep the sauce from clumping. Serve immediately with steamed white rice.
#     """,
#   source: "https://www.seriouseats.com/recipes/2017/08/gong-bao-ji-ding-sichuan-kung-pow-chicken-recipe.html",
#   prep_time: 5,
#   cook_time: 15,
#   servings: 2
# )
# mediterranean_chicken_and_orzo = Recipe.create!(
#   name: "Mediterranean Chicken & Orzo",
#   steps: """
# 1. Preheat oven to 450ºF
# 2. Start a pot of water to boil
# 3. Coat broccoli with olive oil, salt, pepper. When the oven is ready, put them in for 14-16 minutes on a baking sheet
# 4. Pat the chicken dry with paper towels. Season with salt, pepper, and the oregano. In a medium pan, heat 2 teaspoons of olive oil. Cook 6 to 7 minutes per side.
# 5. Cook Orzo pasta for 7 to 9 minutes
# 6. Tapenade: Finely chop the olives. 1 clove of garlic, smashed to a paste. Combine the chopped olives, garlic, 1 tablespoon of olive oil, half the vinegar. Season with salt and pepper if desired.
# 7. To the pot of cooked pasta, add the roasted broccoli, crème fraîche, remaining vinegar, cheese, and a drizzle of olive oil. Stir to combine. Taste, then season with salt and pepper if desired. Slice the cooked chicken crosswise. Serve the sliced chicken with the finished pasta. Top the chicken with the tapenade. Enjoy!
#     """,
#   source: "https://www.blueapron.com/recipes/mediterranean-chicken-orzo-with-feta-and-olives",
#   prep_time: 15,
#   cook_time: 20,
#   servings: 2
# )
#
# chicken_breast = Ingredient.create!(name: "chicken breast")
# orzo_pasta = Ingredient.create!(name: "orzo pasta")
# garlic_clove = Ingredient.create!(name: "garlic clove")
# creme_fraiche = Ingredient.create!(name: "crème fraîche")
# feta_cheese = Ingredient.create!(name: "feta cheese")
# olives = Ingredient.create!(name: "olives")
# dried_oregano = Ingredient.create!(name: "dried oregano")
# broccoli = Ingredient.create!(name: "broccoli")
# red_wine_vinegar = Ingredient.create!(name: "red wine vinegar")
# shaoxing_wine = Ingredient.create!(name: "shaoxing wine")
# soy_sauce = Ingredient.create!(name: "soy sauce")
# cornstarch = Ingredient.create!(name: "cornstarch")
# salt = Ingredient.create!(name: "salt")
# honey = Ingredient.create!(name: "honey")
# balsamic_vinegar = Ingredient.create!(name: "balsamic vinegar")
# chicken_stock = Ingredient.create!(name: "chicken stock")
# vegetable_oil = Ingredient.create!(name: "vegetable oil")
# arbol_chiles = Ingredient.create!(name: "árbol chiles")
# sichuan_peppercorns = Ingredient.create!(name: "sichuan peppercorns")
# ginger = Ingredient.create!(name: "ginger")
# scallions = Ingredient.create!(name: "scallions")
# peanuts = Ingredient.create!(name: "peanuts")
#
# RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: chicken_breast, measure: count, amount: 2, notes: "cut into 1/2 inch cubes")
# RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: shaoxing_wine, measure: mls, amount: 20, notes: "sub dry sherry wine or any rice wine")
# RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: soy_sauce, measure: mls, amount: 20)
# RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: cornstarch, measure: mls, amount: 15)
# RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: salt, measure: count, amount: 1, notes: "large pinch")
# RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: honey, measure: mls, amount: 15)
# RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: balsamic_vinegar, measure: mls, amount: 30)
# RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: vegetable_oil, measure: mls, amount: 45)
# RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: arbol_chiles, measure: count, amount: 12, notes: "stems removed, cut into 1/2 inch pieces with scissors. Sub. shishito or any type of pepper")
# RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: sichuan_peppercorns, measure: count, amount: 5, notes: "reddish husks only")
# RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: garlic_clove, measure: count, amount: 4, notes: "thinly sliced")
# RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: ginger, measure: count, amount: 1, notes: "1-inch knob, peeled and cut into fine matchsticks or grated")
# RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: scallions, measure: count, amount: 6, notes: "white and pale green parts only, cut into 1/2-inch pieces")
# RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: peanuts, measure: mls, amount: 177)
#
# RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: chicken_breast, measure: count, amount: 2)
# RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: orzo_pasta, measure: grams, amount: 113)
# RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: garlic_clove, measure: count, amount: 1)
# RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: creme_fraiche, measure: mls, amount: 30)
# RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: feta_cheese, measure: grams, amount: 43)
# RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: olives, measure: grams, amount: 30)
# RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: dried_oregano, measure: mls, amount: 5)
# RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: broccoli, measure: grams, amount: 227)
# RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: red_wine_vinegar, measure: mls, amount: 15)
