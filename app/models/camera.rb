class Camera < ApplicationRecord
    belongs_to :user, :optional => true
    has_many :rates
end
