class AddPriceInfo < ActiveRecord::Migration
  def change
  	 add_column :prices, :price_info, :text
  end
end
