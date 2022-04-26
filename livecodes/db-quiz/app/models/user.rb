class User < ActiveRecord::Base
  has_many :readings
  has_many :books, through: :readings # we can use user.books
  has_many :authors, through: :books # we can use user.authors
end
