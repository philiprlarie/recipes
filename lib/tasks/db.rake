require 'csv'

namespace :db do
  desc "Output all of the database to CSV files"
  task to_csv: :environment do
    csv_directory = Rails.root.join('lib', 'csv')

    conn = ActiveRecord::Base.connection.raw_connection

    # http://www.postgresqltutorial.com/postgresql-show-tables/
    table_names_sql = <<-SQL
        SELECT tablename
        FROM pg_catalog.pg_tables
        WHERE
          schemaname != 'pg_catalog' AND
          schemaname != 'information_schema';
    SQL

    names = conn.exec(table_names_sql)

    # https://www.rubydoc.info/gems/pg/PG/Result
    names.each_row do |name|
      name = name[0]
      puts name

      # binding.irb
      File.open(File.join(csv_directory, name + '.csv'), 'w') do |file|
        # https://www.rubydoc.info/gems/pg/PG/Connection#copy_data-instance_method
        conn.copy_data("COPY " + name + " TO STDOUT DELIMITER ',' CSV HEADER;") do
          while row = conn.get_copy_data
            file.puts row
          end
        end
      end
    end

    conn.close
  end

  desc "reset the database using data stored in CSV files"
  task seed_from_csv: :environment do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke

    recipes_csv_text = File.read(Rails.root.join('lib', 'csv', 'recipes.csv'))
    recipes_csv = CSV.parse(recipes_csv_text, :headers => true, :encoding => 'ISO-8859-1')
    recipes_csv.each do |row|
      r = Recipe.new
      r.id = row['id']
      r.name = row['name']
      r.steps = row['steps']
      r.source = row['source']
      r.created_at = row['created_at']
      r.updated_at = row['updated_at']
      r.save
      puts "Recipe \"#{r.name}\" saved"
    end
    puts "There are now #{Recipe.count} rows in the recipes table"

    ingredients_csv_text = File.read(Rails.root.join('lib', 'csv', 'ingredients.csv'))
    ingredients_csv = CSV.parse(ingredients_csv_text, :headers => true, :encoding => 'ISO-8859-1')
    ingredients_csv.each do |row|
      i = Ingredient.new
      i.id = row['id']
      i.name = row['name']
      i.created_at = row['created_at']
      i.updated_at = row['updated_at']
      i.save
      puts "Ingredient \"#{i.name}\" saved"
    end
    puts "There are now #{Ingredient.count} rows in the ingredients table"

    recipe_ingredients_csv_text = File.read(Rails.root.join('lib', 'csv', 'recipe_ingredients.csv'))
    recipe_ingredients_csv = CSV.parse(recipe_ingredients_csv_text, :headers => true, :encoding => 'ISO-8859-1')
    recipe_ingredients_csv.each do |row|
      ri = Recipe.new
      ri.id = row['id']
      ri.recipe_id = row['recipe_id']
      ri.ingredient_id = row['ingredient_id']
      ri.units = row['units']
      ri.created_at = row['created_at']
      ri.updated_at = row['updated_at']
      ri.save
      puts "Recipe Ingredient \"#{r.id}\" saved"
    end
    puts "There are now #{RecipeIngredient.count} rows in the recipe-ingredients table"
  end

end
