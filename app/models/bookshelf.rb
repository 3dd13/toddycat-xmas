class Bookshelf
  include Mongoid::Document
  
  has_many :books
  
  field :name, type: String
  
  accepts_nested_attributes_for :books
end
