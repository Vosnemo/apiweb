class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :name, null: false
      t.text :bio, null: false, default :"Biografia"
      t.text :country, null :false
      t.string :age, null :false
      t.timestamps
    end
  end
end
