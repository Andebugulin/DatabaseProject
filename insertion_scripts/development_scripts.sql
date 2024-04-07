-- Fetching Recipes with a Specific Ingredient
SELECT R.Name
FROM Recipes R
JOIN RecipeIngredients RI ON R.RecipeId = RI.RecipeId
JOIN Ingredients I ON RI.IngredientId = I.IngredientId
WHERE I.Name = 'Blueberries';

-- Updating a Recipe's Cooking Time
UPDATE Recipes
SET CookingTime = 50
WHERE Name = 'Blueberry Pie';

-- Deleting a Recipe
DELETE FROM Recipes
WHERE Name = 'Grilled Cheese Sandwich';

-- Finding Recipes Based on Cooking Hardware
SELECT R.Name
FROM Recipes R
JOIN RecipeHardware RH ON R.RecipeId = RH.RecipeId
JOIN CookingHardware CH ON RH.HardwareId = CH.HardwareId
WHERE CH.Name = 'Oven';
