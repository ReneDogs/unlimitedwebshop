class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :article_id
      t.integer :order_id
      t.integer :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
