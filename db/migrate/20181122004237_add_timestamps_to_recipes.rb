class AddTimestampsToRecipes < ActiveRecord::Migration[5.2]
  def change
    # https://stackoverflow.com/questions/46520907/add-timestamps-to-existing-table-in-db-rails-5?rq=1

    # add new column but allow null values
    add_column :recipes, :created_at, :datetime, null: true
    add_column :recipes, :updated_at, :datetime, null: true

    # change not null constraints
    change_column_null :recipes, :created_at, false
    change_column_null :recipes, :updated_at, false
  end
end
