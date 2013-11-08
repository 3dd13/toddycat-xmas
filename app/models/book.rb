class Book
  include Mongoid::Document
  
  belongs_to :bookshelf
  
  field :title, type: String
end
