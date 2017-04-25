class CreateStones < ActiveRecord::Migration[5.0]
  def change
    create_table :stones do |t|
      t.string :kind
      t.string :rarity

      t.timestamps
    end
  end
end
