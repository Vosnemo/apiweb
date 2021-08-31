class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.text :synopsis, default: "Synopsis Movie"
      t.text :genre, default: "Genre Movie"
      t.string :classification, null: true
      t.float :score, null: true 
      t.string :duration, default: "0:00"
      t.string :year, default: "9999"
      t.timestamps
    end
  end
end
