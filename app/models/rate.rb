class Rate < ApplicationRecord
    belongs_to :user, :optional => true
    belongs_to :camera, :optional => true
end
