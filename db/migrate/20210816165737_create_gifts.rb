class CreateGifts < ActiveRecord::Migration[6.1]
  def change
    create_table :gifts do |t|
      t.references :giver, null: false, foreign_key: true
      t.references :recipient, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
