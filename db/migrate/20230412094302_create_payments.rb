class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :id_customer
      t.string :name_movie
      t.string :add_voucher
      t.string :total_cost
      t.string :payment_method
      t.string :payment_time

      t.timestamps
    end
  end
end
