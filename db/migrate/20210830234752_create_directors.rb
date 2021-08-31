class CreateDirectors < ActiveRecord::Migration[6.1]
  def change
    create_table :directors do |t|
      t.string :name, null: false
      t.text :bio, null: false, default: "Biografia"
      t.text :country, null: false
      t.string :age, null: true
      t.boolean :is_writer, default: false 
      t.timestamps
    end
  end
end
