# DatabaseProject by Andrei Gulin

**Program of Study:** IT  
**Date:** 30 Mar. 2024

## Project Structure

The project is organized into specific directories to streamline development and deployment:

```
.
├── creation_scripts
│   ├── [creation_database.sql](creation_scripts/creation_database.sql)
│   ├── [creation_scripts.sql](creation_scripts/creation_scripts.sql)
│   └── [README.md](creation_scripts/README.md)
├── insertion_scripts
│   ├── [development_scripts.sql](insertion_scripts/development_scripts.sql)
│   ├── [insertion_scripts.sql](insertion_scripts/insertion_scripts.sql)
│   └── [README.md](insertion_scripts/README.md)
├── [README.md](README.md)
└── [recipes_entity_table.png](recipes_entity_table.png)
```

Each directory contains SQL scripts and README files that detail the purposes and functionalities of the scripts within, ensuring clarity and ease of use.

## Overview

This project focuses on developing a relational database for a food recipe management application. It aims to catalog recipes, their ingredients, required cooking hardware, instructions, and categorize recipes for easy navigation and user interaction.

## Requirement Analysis

The application is built to facilitate the following core functionalities:

- **Recipe Management:** Empowering users to add, update, or delete recipes.
- **Detailed Recipe Information:** Providing exhaustive details for each recipe, including ingredients, cooking hardware, step-by-step instructions, total cooking time, and food allergy warnings.
- **Ingredient Flexibility:** Offering suggestions for optional or alternative ingredients to enhance recipe adaptability and accommodate diverse dietary needs.
- **Recipe Suggestions:** Enabling recipe searches based on available ingredients, with the system recommending recipes based on these inputs and suggesting similar or alternative recipes for exploration.

## Future Feature Considerations

To further enrich the user experience, the following features are under consideration:

- **User Profiles:** To enable personalized recipe recommendations, dietary tracking, and a repository for favorite recipes.
- **Social Integration:** Encouraging users to share recipes, rate them, and provide feedback, nurturing a vibrant culinary community.
- **Dietary Restrictions:** Including comprehensive dietary restriction information to refine recipe searches according to specific needs (e.g., vegan, gluten-free, nut-free).
- **Seasonal and Regional Cuisines:** Facilitating recipe discovery based on seasonal ingredient availability or regional culinary explorations.
- **Cooking Skill Levels:** Catering to a wide range of users, from beginners to experienced chefs, by classifying recipes according to difficulty or required skill level.

## Schema Design

The database schema is meticulously designed to efficiently manage the extensive data involved in recipe management, comprising the following components:

### Tables:

- **Recipes:** The core entity, detailing each recipe's name, cooking time, category, and other pertinent information.
- **Ingredients:** Cataloging ingredients used across recipes and their potential allergens.
- **Cooking Hardware:** Listing the tools required for preparing recipes.
- **Instructions:** Outlining step-by-step cooking procedures for each recipe.

### Relationships and Keys:

- **Many-to-Many Relationships:** Between Recipes and Ingredients, and Recipes and Cooking Hardware, managed through junction tables (`RecipeIngredients`, `RecipeHardware`) to handle the multifaceted nature of cooking processes.
- **One-to-Many Relationship:** From Recipes to Instructions, aligning with the sequential execution of cooking steps.

### Junction Tables:

- **RecipeIngredients:** Tracks ingredients for each recipe, including quantities.
- **RecipeHardware:** Associates recipes with their necessary cooking tools.

This foundational schema supports the application's immediate needs while allowing for future expansions.

![Database Design Picture](recipes_entity_table.png "Database Schema Design")

---
