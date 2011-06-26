# == Schema Information
# Schema version: 20110616154532
#
# Table name: items
#
#  id         :integer         not null, primary key
#  article_id :integer
#  order_id   :integer
#  amount     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Item < ActiveRecord::Base
  
  attr_accessible :article_id,:order_id,:amount
  
    belongs_to :article
    belongs_to :order
    
    validates(:article_id, :presence => true)
    validates(:order_id, :presence => true)
    validates(:amount, :presence => true)
end
