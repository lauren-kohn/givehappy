class CreateGifts < ActiveRecord::Migration[6.1]
  def change
    create_table :gifts do |t|
      t.references :giver_id, null: false, foreign_key: true
      t.references :recipient_id, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
