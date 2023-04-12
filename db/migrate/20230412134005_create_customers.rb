class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :id_customer
      t.string :name
      t.string :mobile
      t.string :gmail

      t.timestamps
    end
  end
end
