class Post < ApplicationRecord
    validates :scedule, presence: true
    validates :start, presence: true
    validates :end, presence: true
end
