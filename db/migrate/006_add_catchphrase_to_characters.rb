class AddCatchphraseToCharacters < ActiveRecord::Migration[6.1]
  def change
    create_column(:characters, :catchphrase, :string )
  end
end
