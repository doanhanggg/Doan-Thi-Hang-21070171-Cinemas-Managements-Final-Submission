class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :name_movie
      t.string :name_customer
      t.string :mobile
      t.string :gmail
      t.string :total_cost
      t.string :add_voucher
      t.string :payment_method
      t.time :payment_time

      t.timestamps
    end
  end
end
