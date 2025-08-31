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

--5. RecipeCategories table as a bridge, storing pairs of recipe_id and category_id
CREATE TABLE RecipeCategories (
  recipe_id INTEGER REFERENCES Recipes(id),
category_id INTEGER REFERENCES Categories(id),
PRIMARY KEY (recipe_id, category_id)
);

-- ========================
-- Minimal sample data
-- ========================


--Recipe
INSERT INTO Recipes (name, ingredients_list, steps_list) VALUES
(
  'Avocado Salad',
   'Avocado, Mixed vegetables, Olive oil, Lemon juice',
   '1. Chop vegetables; 2. Mix with avocado; 3. Add dressing;'
);

INSERT INTO Recipes(name, ingredients_list, steps_list) VALUES
('No-Bake Cheesecake', 'Condensed milk, Cream Cheese, Lemon Juice, Pie Crust, Cherry Jam', 
'1.Beat Cream Cheese; 2.Add condensed Milk and blend; 3.Add Lemon Juice and blend; 4.Add the mix to the pie crust; 5. Spread the Cherry Jam; 6.Place in refrigerator for 3h.;');

INSERT INTO Recipes(name, ingredients_list, steps_list) VALUES
('Roasted Brussels Sprouts', 'Brussels Sprouts, Lemon juice, Sesame seeds, Pepper, Salt, Olive oil', 
'1. Preheat the oven; 2. Mix the ingredients in a bowl; 3. Spread the mix on baking sheet; 4. Bake for 30'';');

INSERT INTO Recipes(name, ingredients_list, steps_list) VALUES
('Mac & Cheese', 'Macaroni, Butter, Flour, Salt, Pepper, Milk, Shredded Cheddar cheese', '1. Cook Macaroni for 8''; 2. Melt butter in a saucepan; 3. Add flour, salt, pepper and mix; 4. Add Milk and mix; 5. Cook until mix is smooth; 6. Add cheddar cheese; 7. Add the macaroni;');

INSERT INTO Recipes (name, ingredients_list, steps_list) VALUES
('Tamagoyaki Japanese Omelette', 'Eggs, Soy sauce, Sugar, Salt, Olive Oil', 
'1. Beat the eggs; 2. Add soya sauce, sugar and salt; 3. Add oil to a sauce pan; 4. Bring to medium heat; 5. Add some mix to the sauce pan; 6. Let is cook for 1''; 7. Add oil to a sauce pan; 8. Add some mix to the sauce pan; 9. Let is cook for 1''; 10. Remove pan from fire;');

-- Categories
INSERT INTO Categories (name) VALUES ('Salads'), ('Healthy');

INSERT INTO Categories(name) VALUES
('Cake'),
('No-Bake'),
('Vegetarian'),
('Vegan'),
('Gluten-Free'),
('Japanese')


-- Ingredients
INSERT INTO Ingredients (name) VALUES 
('Avocado'), 
('Mixed vegetables'), 
('Olive oil'), 
('Lemon juice');

INSERT INTO Ingredients(name) VALUES
('Condensed milk'),
('Cream Cheese'),
('Lemon Juice'),
('Pie Crust'),
('Cherry Jam'),
('Brussels Sprouts'),
('Lemon juice'),
('Sesame seeds'),
('Pepper'),
('Salt'),
('Olive oil'),
('Macaroni'),
('Butter'),
('Flour'),
('Milk'),
('Shredded Cheddar cheese'),
('Eggs'),
('Soy sauce'),
('Sugar')

-- Steps
INSERT INTO Steps (description) VALUES
('Chop vegetables'),
('Mix with avocado'),
('Add dressing');

INSERT INTO Steps (description) VALUES
('Beat Cream Cheese'),
('Add condensed Milk and blend'),
('Add Lemon Juice and blend'),
('Add the mix to the pie crust'),
('Spread the Cherry Jam'),
('Place in refrigerator for 3h.'),
('Preheat the oven'),
('Mix the ingredients in a bowl'),
('Spread the mix on baking sheet'),
('Bake for 30'''),
('Cook Macaroni for 8'''),
('Melt butter in a saucepan'),
('Add flour, salt, pepper and mix '),
('Add Milk and mix'),
('Cook until mix is smooth'),
('Add cheddar cheese'),
('Add the macaroni'),
('Beat the eggs'),
('Add soya sauce, sugar and salt'),
('Add oil to a sauce pan '),
('Bring to medium heat'),
('Add some mix to the sauce pan'),
('Let is cook for 1'''),
('Add oil to a sauce pan'),
('Add some mix to the sauce pan'),
('Let is cook for 1'''),
('Remove pan from fire')


-- RecipeCategories
INSERT INTO RecipeCategories(recipe_id, category_id) VALUES 
(1, 3);
INSERT INTO RecipeCategories(recipe_id, category_id) VALUES 
(1, 7);
INSERT INTO RecipeCategories(recipe_id, category_id) VALUES 
(1, 8);


INSERT INTO RecipeCategories(recipe_id, category_id) VALUES 
(2, 1);
INSERT INTO RecipeCategories(recipe_id, category_id) VALUES 
(2, 2);
INSERT INTO RecipeCategories(recipe_id, category_id) VALUES 
(2, 3);


INSERT INTO RecipeCategories(recipe_id, category_id) VALUES 
(3, 4);
INSERT INTO RecipeCategories(recipe_id, category_id) VALUES 
(3, 5);

INSERT INTO RecipeCategories(recipe_id, category_id) VALUES 
(4, 3);

INSERT INTO RecipeCategories(recipe_id, category_id) VALUES 
(5, 3);
INSERT INTO RecipeCategories(recipe_id, category_id) VALUES 
(5, 7);



