# == Schema Information
# Schema version: 20110615092808
#
# Table name: articles
#
#  id          :integer         not null, primary key
#  price       :float
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Article < ActiveRecord::Base
  
  attr_accessible :name, :price, :description
  
  has_many :items, :foreign_key => "article_id"
  
  validates :name,  :presence => true,
                    :length   => { :maximum => 255}
  validates :description, :presence => true,
                          :length   => { :maximum => 255 }
  validates :price, :presence => true,
                    :length   => { :maximum => 50 }
end