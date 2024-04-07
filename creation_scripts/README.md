### Database Creation

Firstly,creation of the database. I

```sql
CREATE DATABASE IF NOT EXISTS RecipeManagement;
USE RecipeManagement;
```

The script above creates a new database named `RecipeManagement` only if it doesn't already exist, and then it selects that database for use.

### Tables Creation

#### Recipes Table

```sql
CREATE TABLE IF NOT EXISTS Recipes (
    RecipeId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    CookingTime INT NOT NULL,
    Category VARCHAR(255),
    ImageURL VARCHAR(255),
    AllergyWarning TEXT
);
```

#### Ingredients Table

```sql
CREATE TABLE IF NOT EXISTS Ingredients (
    IngredientId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Allergens TEXT
);
```

#### Cooking Hardware Table

```sql
CREATE TABLE IF NOT EXISTS CookingHardware (
    HardwareId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Type VARCHAR(255)
);
```

#### Instructions Table

This table links directly to `Recipes` with a foreign key.

```sql
CREATE TABLE IF NOT EXISTS Instructions (
    InstructionId INT AUTO_INCREMENT PRIMARY KEY,
    StepOrder INT NOT NULL,
    Description TEXT NOT NULL,
    ImageURL VARCHAR(255),
    RecipeId INT,
    FOREIGN KEY (RecipeId) REFERENCES Recipes(RecipeId)
);
```

### Junction Tables for Many-to-Many Relationships

#### RecipeIngredients

```sql
CREATE TABLE IF NOT EXISTS RecipeIngredients (
    RecipeId INT,
    IngredientId INT,
    Amount VARCHAR(255),
    PRIMARY KEY (RecipeId, IngredientId),
    FOREIGN KEY (RecipeId) REFERENCES Recipes(RecipeId),
    FOREIGN KEY (IngredientId) REFERENCES Ingredients(IngredientId)
);
```

#### RecipeHardware

```sql
CREATE TABLE IF NOT EXISTS RecipeHardware (
    RecipeId INT,
    HardwareId INT,
    PRIMARY KEY (RecipeId, HardwareId),
    FOREIGN KEY (RecipeId) REFERENCES Recipes(RecipeId),
    FOREIGN KEY (HardwareId) REFERENCES CookingHardware(HardwareId)
);
```

### Constraints and Relationships

The `FOREIGN KEY` constraints in the `Instructions`, `RecipeIngredients`, and `RecipeHardware` tables ensure data integrity by linking these tables to the `Recipes`, `Ingredients`, and `CookingHardware` tables, respectively. The `PRIMARY KEY` in the junction tables (`RecipeIngredients`, `RecipeHardware`) consists of the combined keys to handle the many-to-many relationships properly.

### Documentation

The SQL scripts provided above are designed for creating database tables and establishing the necessary relationships between them. Each table creation script includes the primary key declaration to uniquely identify each row. The junction tables (`RecipeIngredients`, `RecipeHardware`) are used to manage the many-to-many relationships, with foreign keys enforcing referential integrity.

By executing these scripts, you'll have set up the database structure needed for the food recipe management application.

---

Entire creation script might be found in [creation_script.sql](creation_script.sql)
