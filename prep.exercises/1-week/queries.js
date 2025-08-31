import { Client } from "pg";

const client = new Client({
  host: "localhost",
  user: "hyfuser",
  port: 5432,
  password: "hyfpassword",
  database: "postgres",
});

async function runRecipeQueries() {
  try {
    await client.connect();
    console.log("Connected to PostgreSQL!");

    await client.query(`
SELECT r.*
FROM Recipes r
JOIN RecipeCategories rc ON r.id = rc.recipe_id
JOIN Categories c ON rc.category_id = c.id
WHERE c.name = 'Vegetarian' AND r.ingredients_list ILIKE '%potato%';
    `);

    await client.query(`
SELECT r.*
FROM Recipes r
JOIN RecipeCategories rc1 ON r.id = rc1.recipe_id
JOIN Categories c1 ON rc1.category_id = c1.id
JOIN RecipeCategories rc2 ON r.id = rc2.recipe_id
JOIN Categories c2 ON rc2.category_id = c2.id
WHERE c1.name = 'Cake' AND c2.name = 'No-Bake';
    `);

    await client.query(`
      SELECT r.*
FROM Recipes r
JOIN RecipeCategories rc1 ON r.id = rc1.recipe_id
JOIN Categories c1 ON rc1.category_id = c1.id
JOIN RecipeCategories rc2 ON r.id = rc2.recipe_id
JOIN Categories c2 ON rc2.category_id = c2.id
WHERE c1.name = 'Vegan' AND c2.name = 'Japanese';
      `);
  } catch (err) {
    console.error("Error:", err);
  } finally {
    await client.end();
  }
}

runRecipeQueries();

/*
Answers
- What changes do you need to make to include these new recipes in your database?
I needed to add new categories, ingredients, steps add 4 new recipes, add a join table RecipeCategories to connect the recipe with it's category or categories

- Where can you add a primary key?
PRIMARY KEY has every of 5 tables 

- Which tables should be linked with a foreign key?
A foreign key has every table, except RecipeCategories
RecipeCategories links recipe_id to Recipes(id) 
and category_id to Categories(id).

- What type of relationships do you see between the tables?
Many-to-many between Recipes and Categories via RecipeCategories.
One-to-many from Recipes to Ingredients and Steps.


A ERD screenshot to my database is on GoogleDrive by this link:
https://drive.google.com/file/d/1rJGD1g-JkP3iMUT1f_WSynxoQsyjBI1I/view?usp=sharing
*/
