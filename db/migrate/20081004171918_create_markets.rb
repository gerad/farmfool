class CreateMarkets < ActiveRecord::Migration
  def self.up
    create_table :markets do |t|
      t.column :name, :string, :null => false
      t.column :street, :string
      t.column :city, :string
      t.column :state, :string, :limit => 2
      t.column :zip, :string, :limit => 5
      t.timestamps
    end
  end

  def self.down
    drop_table :markets
  end
end
