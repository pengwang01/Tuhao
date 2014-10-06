class Person < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :password, length:{minimum:6}
  validates :firstname, presence: true, length: {maximum:50}
  validates :lastname, presence: true, length: {maximum:50} 
  
  validates :address1, presence: true, length: {maximum:200}
  validates :address2, presence: true, length: {maximum:200}
  validates :city, presence: true, length: {maximum:50}
  validates :zipcode, presence: true, length: {maximum:5}
  validates :phone, presence: true, format: {with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }
end
