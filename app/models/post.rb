class Post < ApplicationRecord
    validates :schedule, presence: true
    validates :start, presence: true
    validates :end, presence: true
end
