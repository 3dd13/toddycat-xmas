class Bookshelf
  include Mongoid::Document
  
  has_many :books
  
  field :name, type: String
end
