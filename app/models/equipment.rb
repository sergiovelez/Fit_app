class Equipment < ApplicationRecord
  has_many_and_belongs_to :users, :excerises
end
