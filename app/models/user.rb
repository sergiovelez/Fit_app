class User < ApplicationRecord
  has_secure_password
  has_many_and_belongs_to :equipment
end
