class CreateCostumers < ActiveRecord::Migration[5.2]
  def change
    create_table :costumers do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
