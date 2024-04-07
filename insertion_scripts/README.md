### Sample Data Insertion

First, insertion of sample data:

#### Inserting into `Recipes`

```sql
INSERT INTO Recipes (Name, CookingTime, Category, ImageURL, AllergyWarning)
VALUES
('Blueberry Pie', 45, 'Dessert', 'http://example.com/blueberrypie.jpg', 'Contains gluten'),
('Grilled Cheese Sandwich', 10, 'Lunch', 'http://example.com/grilledcheese.jpg', 'Contains dairy');
```

#### Inserting into `Ingredients`

```sql
INSERT INTO Ingredients (Name, Allergens)
VALUES
('Blueberries', ''),
('Bread', 'Gluten'),
('Cheese', 'Dairy');
```

#### Inserting into `CookingHardware`

```sql
INSERT INTO CookingHardware (Name, Type)
VALUES
('Oven', 'Appliance'),
('Pan', 'Utensil');
```

#### Inserting into `Instructions`

```sql
INSERT INTO Instructions (StepOrder, Description, ImageURL, RecipeId)
VALUES
(1, 'Mix blueberries with sugar and flour', 'http://example.com/step1.jpg', 1),
(2, 'Lay the first pie crust in the baking pan', 'http://example.com/step2.jpg', 1),
(1, 'Place bread on pan, add cheese, top with another bread slice', 'http://example.com/step1_grilledcheese.jpg', 2);
```

#### Inserting into `RecipeIngredients`

```sql
INSERT INTO RecipeIngredients (RecipeId, IngredientId, Amount)
VALUES
(1, 1, '2 cups'),
(2, 2, '2 slices'),
(2, 3, '1 slice');
```

#### Inserting into `RecipeHardware`

```sql
INSERT INTO RecipeHardware (RecipeId, HardwareId)
VALUES
(1, 1),
(2, 2);
```

### Query Development

Let's develop some SQL queries to demonstrate the database's data retrieval capabilities.

#### Fetching Recipes with a Specific Ingredient

```sql
SELECT R.Name
FROM Recipes R
JOIN RecipeIngredients RI ON R.RecipeId = RI.RecipeId
JOIN Ingredients I ON RI.IngredientId = I.IngredientId
WHERE I.Name = 'Blueberries';
```

This query fetches recipes that use blueberries as an ingredient.

#### Updating a Recipe's Cooking Time

```sql
UPDATE Recipes
SET CookingTime = 50
WHERE Name = 'Blueberry Pie';
```

This query updates the cooking time of the Blueberry Pie recipe to 50 minutes.

#### Deleting a Recipe

```sql
DELETE FROM Recipes
WHERE Name = 'Grilled Cheese Sandwich';
```

This query deletes the Grilled Cheese Sandwich recipe from the database.

#### Finding Recipes Based on Cooking Hardware

```sql
SELECT R.Name
FROM Recipes R
JOIN RecipeHardware RH ON R.RecipeId = RH.RecipeId
JOIN CookingHardware CH ON RH.HardwareId = CH.HardwareId
WHERE CH.Name = 'Oven';
```

This query retrieves recipes that require an oven to make.

---

The SQL scripts for inserting sample data help to populate the database with initial values for testing and demonstration. The queries developed showcase key functionalities such as searching for recipes by ingredient, updating recipe details, and deleting recipes. These queries demonstrate how to interact with the database, retrieve information, and modify data, providing a solid foundation for further development of the food recipe management application.

---

Entire script for the insertion can be found in [insertion_scripts.sql](insertion_scripts.sql)

---

Entire script for the fetching, updating, deleting, finding the data, can be found in [development_scripts.sql](development_scripts.sql)
