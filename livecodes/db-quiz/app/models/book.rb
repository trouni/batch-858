class Book < ActiveRecord::Base
  belongs_to :author
  has_many :readings
  has_many :users, through: :readings # we can use book.users
end
