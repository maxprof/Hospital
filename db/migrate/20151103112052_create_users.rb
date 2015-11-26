class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.boolean :status
      t.date :enter_date
      t.integer :admin_id
      t.text :diagnoz

      t.timestamps null: false
    end
  end
end
