class Dog < ActiveRecord::Base
  attr_accessible :age, :available, :breed, :description, :name, :gender, :thumbnail

  validates :name, :presence => true
  validates :description, :presence => true
  validates :breed, :presence => true
  validates :age, :presence => true, :numericality => true
  validates :gender, :presence => true

end
