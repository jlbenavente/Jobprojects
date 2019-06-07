class CreateAgreements < ActiveRecord::Migration[5.2]
  def change
    create_table :agreements do |t|
      t.references :user, foreign_key: true
      t.references :joboffer, foreign_key: true
      t.integer :final_price
      t.boolean :agreed
      t.boolean :payed

      t.timestamps
    end
  end
end
