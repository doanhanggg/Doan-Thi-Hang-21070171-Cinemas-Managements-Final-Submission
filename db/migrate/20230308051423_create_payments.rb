class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :name_customer
      t.string :mobile
      t.string :gmail
      t.string :add_voucher
      t.datetime :payment_time
      t.string :payment_method
      t.string :total_cost

      t.timestamps
    end
  end
end
