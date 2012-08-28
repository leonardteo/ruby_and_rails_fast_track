class Enquiry < ActiveRecord::Base
  attr_accessible :body, :dog_id, :email, :name, :phone

  belongs_to :dog

  validates :body, :presence => true
  validates :dog_id, :presence => true
  validates :email, :presence => true
  validates :name, :presence => true
  validates :phone, :presence => true
end
