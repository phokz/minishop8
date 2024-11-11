class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.integer :quantity
      t.string :packettery_branch_id
      t.string :confirmed_at
      t.string :paid_at

      t.timestamps
    end
  end
end
