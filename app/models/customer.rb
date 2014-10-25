class Customer
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  validates_presence_of :name, :email
  # has_many :tickets
end
