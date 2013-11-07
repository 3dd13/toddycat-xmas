class Floor
  include Mongoid::Document
  
  has_many :flats
  accepts_nested_attributes_for :flats, :allow_destroy => true
  
  # , reject_if: proc { |attributes| attributes['name'].blank? }
  
  field :name, type: String
end
