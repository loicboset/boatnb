class TableBoats < ActiveRecord::Migration[6.0]
  def change
  	create_table :boats do |t|
    	t.string	:name
    	t.string	:location
    	t.text		:description
    	t.integer	:guests
    	t.integer	:price
    	t.string	:boat_space
    end
  end
end
