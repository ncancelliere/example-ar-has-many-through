class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
      t.references :movie
      t.references :actor
      t.string :character

      t.timestamps
    end
  end
end
