# == Schema Information
# Schema version: 20110615092808
#
# Table name: orders
#
#  id         :integer         primary key
#  user_id    :integer
#  orderdate  :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Order < ActiveRecord::Base
  
    attr_accessible :user_id,:orderdate
  
    belongs_to :user
    has_many :items,:foreign_key => "order_id", :dependent => :destroy
    
    validates(:user_id, :presence => true)
    validates(:orderdate, :presence => true)
    
end