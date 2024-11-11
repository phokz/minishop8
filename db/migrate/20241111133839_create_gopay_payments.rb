class CreateGopayPayments < ActiveRecord::Migration[8.0]
  def change
    create_table :gopay_payments do |t|
      t.integer :gopay_id
      t.references :order, null: false, foreign_key: true
      t.decimal :amount
      t.string :currency
      t.string :state

      t.timestamps
    end
  end
end
