-- 1. Recipes table
CREATE TABLE Recipes(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  ingredients_list TEXT NOT NULL,
  steps_list TEXT NOT NULL
);

-- 2.Categories table
CREATE TABLE Categories(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);


--3. Ingredients table
CREATE TABLE Ingredients(
  id SERIAL PRIMARY KEY,
   name VARCHAR(100) NOT NULL
);

--4. Steps table
CREATE TABLE Steps (
  id SERIAL PRIMARY KEY,
  description TEXT NOT NULL
);


-- ========================
-- Minimal sample data
-- ========================


--Recipe
INSERT INTO Recipes (name, ingredients_list, steps_list) VALUES
(
  'Avocado Salad',
   'Avocado, Mixed vegetables, Olive oil, Lemon juice',
   '1. Chop vegetables; 2. Mix with avocado; 3. Add dressing'
);

-- Categories
INSERT INTO Categories (name) VALUES ('Salads'), ('Healthy');

-- Ingredients
INSERT INTO Ingredients (name) VALUES 
('Avocado'), 
('Mixed vegetables'), 
('Olive oil'), 
('Lemon juice');

-- Steps
INSERT INTO Steps (description) VALUES
('Chop vegetables'),
('Mix with avocado'),
('Add dressing');