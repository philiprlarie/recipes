kenji_kung_pao_chicken = Recipe.create!(
  name: "Kenji Kung Pao Chicken",
  steps: """
1. For the Chicken: Combine chicken, 1 tsp wine, 2 tsp soy sauce, 2 tsp cornstarch, and salt in a small bowl and turn until well mixed and chicken is evenly coated in a thin film of the cornstarch paste. Set aside.
2. For the Sauce: Combine honey, vinegar, 1 tbsp wine, 2 tsp soy sauce, and 1/2 tsp cornstarch in a small bowl. Stir together with a fork until no clumps of cornstarch remain.
3. To Stir-Fry: Pour a small amount of oil into the bottom of a large wok or skillet and rub around with a paper towel. Place over high heat and preheat until smoking. Add remaining oil and immediately add chiles and Sichuan peppercorns. Stir-fry until fragrant but not burnt, about 5 seconds. Immediately add chicken and stir-fry until there are no longer pink spots on the exterior (chicken will still be raw in center at this stage), 45 seconds to 1 1/2 minutes.
4. Add garlic and ginger and stir-fry until fragrant, about 10 seconds. Add scallions and peanuts and stir-fry for 30 seconds.
5. Add sauce ingredients and stir-fry until all the ingredients are coated evenly and the chicken is cooked through, about 1 minute, adding water 1 tablespoon at a time if necessary to keep the sauce from clumping. Serve immediately with steamed white rice.
    """,
  source: "https://www.seriouseats.com/recipes/2017/08/gong-bao-ji-ding-sichuan-kung-pow-chicken-recipe.html",
  prep_time: 5,
  cook_time: 15,
  servings: 2
)
mediterranean_chicken_and_orzo = Recipe.create!(
  name: "Mediterranean Chicken & Orzo",
  steps: """
1. Preheat oven to 450ºF
2. Start a pot of water to boil
3. Coat broccoli with olive oil, salt, pepper. When the oven is ready, put them in for 14-16 minutes on a baking sheet
4. Pat the chicken dry with paper towels. Season with salt, pepper, and the oregano. In a medium pan, heat 2 teaspoons of olive oil. Cook 6 to 7 minutes per side.
5. Cook Orzo pasta for 7 to 9 minutes
6. Tapenade: Finely chop the olives. 1 clove of garlic, smashed to a paste. Combine the chopped olives, garlic, 1 tablespoon of olive oil, half the vinegar. Season with salt and pepper if desired.
7. To the pot of cooked pasta, add the roasted broccoli, crème fraîche, remaining vinegar, cheese, and a drizzle of olive oil. Stir to combine. Taste, then season with salt and pepper if desired. Slice the cooked chicken crosswise. Serve the sliced chicken with the finished pasta. Top the chicken with the tapenade. Enjoy!
    """,
  source: "https://www.blueapron.com/recipes/mediterranean-chicken-orzo-with-feta-and-olives",
  prep_time: 15,
  cook_time: 20,
  servings: 2
)

chicken_breast = Ingredient.create!(name: "chicken breast")
orzo_pasta = Ingredient.create!(name: "orzo pasta")
garlic_clove = Ingredient.create!(name: "garlic clove")
creme_fraiche = Ingredient.create!(name: "crème fraîche")
feta_cheese = Ingredient.create!(name: "feta cheese")
olives = Ingredient.create!(name: "olives")
dried_oregano = Ingredient.create!(name: "dried oregano")
broccoli = Ingredient.create!(name: "broccoli")
red_wine_vinegar = Ingredient.create!(name: "red wine vinegar")
shaoxing_wine = Ingredient.create!(name: "shaoxing wine")
soy_sauce = Ingredient.create!(name: "soy sauce")
cornstarch = Ingredient.create!(name: "cornstarch")
salt = Ingredient.create!(name: "salt")
honey = Ingredient.create!(name: "honey")
balsamic_vinegar = Ingredient.create!(name: "balsamic vinegar")
chicken_stock = Ingredient.create!(name: "chicken stock")
vegetable_oil = Ingredient.create!(name: "vegetable oil")
arbol_chiles = Ingredient.create!(name: "árbol chiles")
sichuan_peppercorns = Ingredient.create!(name: "sichuan peppercorns")
ginger = Ingredient.create!(name: "ginger")
scallions = Ingredient.create!(name: "scallions")
peanuts = Ingredient.create!(name: "peanuts")

RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: chicken_breast, units: 2, notes: "cut into 1/2 inch cubes")
RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: shaoxing_wine, volume: 20, notes: "sub dry sherry wine or any rice wine")
RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: soy_sauce, volume: 20)
RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: cornstarch, volume: 15)
RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: salt, units: 1, notes: "large pinch")
RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: honey, volume: 15)
RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: balsamic_vinegar, volume: 30)
RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: vegetable_oil, volume: 45)
RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: arbol_chiles, units: 12, notes: "stems removed, cut into 1/2 inch pieces with scissors. Sub. shishito or any type of pepper")
RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: sichuan_peppercorns, units: 5, notes: "reddish husks only")
RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: garlic_clove, units: 4, notes: "thinly sliced")
RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: ginger, units: 1, notes: "1-inch knob, peeled and cut into fine matchsticks or grated")
RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: scallions, units: 6, notes: "white and pale green parts only, cut into 1/2-inch pieces")
RecipeIngredient.create!(recipe: kenji_kung_pao_chicken, ingredient: peanuts, volume: 177)

RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: chicken_breast, units: 2)
RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: orzo_pasta, mass: 113)
RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: garlic_clove, units: 1)
RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: creme_fraiche, volume: 30)
RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: feta_cheese, mass: 43)
RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: olives, mass: 30)
RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: dried_oregano, volume: 5)
RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: broccoli, mass: 227)
RecipeIngredient.create!(recipe: mediterranean_chicken_and_orzo, ingredient: red_wine_vinegar, volume: 15)
