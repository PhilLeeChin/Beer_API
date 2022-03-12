class CreateBeers < ActiveRecord::Migration[6.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :description
      t.integer :alcohol_lvl
      t.string :country
      t.string :yr_made
      t.integer :user_id

      t.timestamps
    end
  end
end
