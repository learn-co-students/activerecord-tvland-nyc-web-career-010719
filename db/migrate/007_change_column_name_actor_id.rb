class ChangeColumnNameActorId < ActiveRecord::Migration[4.2]
  def change
      rename_column :characters, :artist_id, :actor_id
  end

end
