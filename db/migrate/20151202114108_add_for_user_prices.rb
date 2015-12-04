class AddForUserPrices < ActiveRecord::Migration
  def change
    add_column :users, :user_prices, :string
  end
end
