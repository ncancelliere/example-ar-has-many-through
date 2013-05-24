class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.string :gender
      t.date :date_of_birth
      t.date :date_of_death

      t.timestamps
    end
  end
end
