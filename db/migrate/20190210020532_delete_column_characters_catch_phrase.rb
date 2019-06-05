class DeleteColumnCharactersCatchPhrase < ActiveRecord::Migration[5.1]
  def change
    remove_column :characters, :catchphrase
  end
end
