class AddStreet2 < ActiveRecord::Migration
  def self.up
    add_column :markets, :street2, :string
  end

  def self.down
    remove_column :markets, :street2
  end
end
