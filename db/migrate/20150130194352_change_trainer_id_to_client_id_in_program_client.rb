class ChangeTrainerIdToClientIdInProgramClient < ActiveRecord::Migration
  def change
    rename_column :program_clients, :trainer_id, :client_id
  end
end
