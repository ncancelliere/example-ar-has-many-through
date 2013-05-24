class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rated
      t.integer :runtime
      t.date :release_date
      t.text :summary

      t.timestamps
    end
  end
end
