class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :lunch
    
    validates_uniqueness_of :lunch_id, scope: :user_id
end
