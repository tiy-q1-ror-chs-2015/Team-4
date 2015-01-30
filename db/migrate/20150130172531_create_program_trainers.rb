class CreateProgramTrainers < ActiveRecord::Migration
  def change
    create_table :program_trainers do |t|
      t.integer :program_id
      t.integer :trainer_id

      t.timestamps null: false
    end
  end
end
