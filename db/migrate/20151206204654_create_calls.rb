class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
