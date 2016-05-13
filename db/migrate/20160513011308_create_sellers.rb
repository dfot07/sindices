class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :lastnamev
      t.string :namev
      t.string :lastnamec
      t.string :namec
      t.string :inscription
      t.string :dateinscription
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
