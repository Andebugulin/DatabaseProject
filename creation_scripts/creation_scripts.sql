CREATE TABLE IF NOT EXISTS Recipes (
    RecipeId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    CookingTime INT NOT NULL,
    Category VARCHAR(255),
    ImageURL VARCHAR(255),
    AllergyWarning TEXT
);

CREATE TABLE IF NOT EXISTS Ingredients (
    IngredientId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Allergens TEXT
);

CREATE TABLE IF NOT EXISTS CookingHardware (
    HardwareId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Type VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Instructions (
    InstructionId INT AUTO_INCREMENT PRIMARY KEY,
    StepOrder INT NOT NULL,
    Description TEXT NOT NULL,
    ImageURL VARCHAR(255),
    RecipeId INT,
    CONSTRAINT fk_instructions_recipes FOREIGN KEY (RecipeId) REFERENCES Recipes(RecipeId) ON DELETE CASCADE
);

-- junction tables to include ON DELETE CASCADE for simpler deletion process

CREATE TABLE IF NOT EXISTS RecipeIngredients (
    RecipeId INT,
    IngredientId INT,
    Amount VARCHAR(255),
    PRIMARY KEY (RecipeId, IngredientId),
    CONSTRAINT fk_recipeingredients_recipes FOREIGN KEY (RecipeId) REFERENCES Recipes(RecipeId) ON DELETE CASCADE,
    CONSTRAINT fk_recipeingredients_ingredients FOREIGN KEY (IngredientId) REFERENCES Ingredients(IngredientId) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS RecipeHardware (
    RecipeId INT,
    HardwareId INT,
    PRIMARY KEY (RecipeId, HardwareId),
    CONSTRAINT fk_recipehardware_recipes FOREIGN KEY (RecipeId) REFERENCES Recipes(RecipeId) ON DELETE CASCADE,
    CONSTRAINT fk_recipehardware_hardware FOREIGN KEY (HardwareId) REFERENCES CookingHardware(HardwareId) ON DELETE CASCADE
);
