class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.text :details
      t.string :features
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
