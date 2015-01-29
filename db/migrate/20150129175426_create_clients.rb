class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.text :goals
      t.date :date_of_birth

      t.timestamps null: false
    end
  end
end
