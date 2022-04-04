class CreateStyles < ActiveRecord::Migration[6.1]
  def change
    create_table :styles do |t|
      t.text :served
      t.text :appetizers
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :beer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
