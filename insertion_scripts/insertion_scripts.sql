-- Inserting into `Recipes`
INSERT INTO Recipes (Name, CookingTime, Category, ImageURL, AllergyWarning)
VALUES
('Blueberry Pie', 45, 'Dessert', 'http://example.com/blueberrypie.jpg', 'Contains gluten'),
('Grilled Cheese Sandwich', 10, 'Lunch', 'http://example.com/grilledcheese.jpg', 'Contains dairy');

-- Inserting into `Ingredients`
INSERT INTO Ingredients (Name, Allergens)
VALUES
('Blueberries', ''),
('Bread', 'Gluten'),
('Cheese', 'Dairy');

-- Inserting into `CookingHardware`
INSERT INTO CookingHardware (Name, Type)
VALUES
('Oven', 'Appliance'),
('Pan', 'Utensil');

-- Inserting into `Instructions`
INSERT INTO Instructions (StepOrder, Description, ImageURL, RecipeId)
VALUES
(1, 'Mix blueberries with sugar and flour', 'http://example.com/step1.jpg', 1),
(2, 'Lay the first pie crust in the baking pan', 'http://example.com/step2.jpg', 1),
(1, 'Place bread on pan, add cheese, top with another bread slice', 'http://example.com/step1_grilledcheese.jpg', 2);

-- Inserting into `RecipeIngredients`
INSERT INTO RecipeIngredients (RecipeId, IngredientId, Amount)
VALUES
(1, 1, '2 cups'),
(2, 2, '2 slices'),
(2, 3, '1 slice');

-- Inserting into `RecipeHardware`
INSERT INTO RecipeHardware (RecipeId, HardwareId)
VALUES
(1, 1),
(2, 2);
