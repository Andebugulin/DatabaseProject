# DatabaseProject by Andrei Gulin

**Program of Study:** IT  
**Date:** 30 Mar. 2024

## Requirement Analysis

The application is designed with the following core functionalities in mind:

- **Recipe Management:** Users can add new recipes, update existing ones, or delete them.
- **Detailed Recipe Information:** Each recipe contains comprehensive details such as ingredients, cooking hardware, step-by-step cooking instructions, total cooking time, and food allergy warnings.
- **Ingredient Flexibility:** The application will provide suggestions for optional or alternative ingredients, enhancing recipe versatility and accommodating varying dietary preferences or restrictions.
- **Recipe Suggestions:** Users can search for recipes based on available ingredients. Moreover, the system will recommend recipes based on these ingredients and suggest similar or alternative recipes.

## Future Feature Considerations

Several additional features could enhance user experience and application utility:

- **User Profiles:** Allowing users to create profiles could enable personalized recipe recommendations, dietary tracking, and the ability to save favorite recipes.
- **Social Integration:** Users could share their recipes with the community, rate them, and provide feedback, fostering a culinary community.
- **Dietary Restrictions:** Expanding the database to include detailed dietary restriction information (e.g., vegan, gluten-free, nut-free) could tailor recipe searches to meet preferences.
- **Seasonal and Regional Cuisines:** Incorporating seasonal and regional tags could help users discover recipes based on the availability of ingredients or explore global cuisines.
- **Cooking Skill Levels:** Classifying recipes by difficulty or required skill level could cater to users ranging from beginners to experienced chefs, enhancing the learning experience.

## Schema Design

The proposed database schema is designed to efficiently store and manage the extensive data involved in recipe management. It includes the following tables and relationships:

### Tables:

- **Recipes:** Central to the application, storing names, cooking times, categories, and additional details of each recipe.
- **Ingredients:** Lists ingredients used across recipes, including potential allergens.
- **Cooking Hardware:** Enumerates the cooking tools required for recipes.
- **Instructions:** Provides step-by-step cooking instructions for each recipe.

### Relationships and Keys:

- A **many-to-many relationship** between Recipes and Ingredients, and Recipes and Cooking Hardware, managed through junction tables (RecipeIngredients, RecipeHardware) to accommodate the complexity of cooking processes.
- A **one-to-many relationship** from Recipes to Instructions, reflecting the sequential nature of cooking steps.

### Junction Tables:

- **RecipeIngredients:** Facilitates ingredient tracking per recipe, including quantities.
- **RecipeHardware:** Links recipes with required cooking hardware.

This schema serves as the foundation for the database, designed to support the application's current requirements and future expansions.

![Database Design Picture](recipes_enitity_table.png "Database Design")
