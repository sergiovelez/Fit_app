class Equipment < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :excerises

  scope :find_by_name, -> (name){find_by(name: name.to_s)}


  def assign_to_user(user,equip_hash)
    equip_hash.each do |name,state|
      user.equipment << Equipment.find_by_name(name) if state == '1'
    end
  end

end
