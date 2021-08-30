class ChangeToActors < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      change_table :actors do |t|
        t.text :bio, null: true
        t.text :country, null: true
        t.string :age, null: true
      end
    end
  end
end
