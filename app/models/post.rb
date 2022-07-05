class Post < ApplicationRecord
    validates :schedule, presence: true
    validates :start, presence: true
    validates :end, presence: true
    validate :date_check

    def date_check
        errors.add(:end,"は開始日より後の日付を選択してください")
        if self.start > self.end
        end
    end
end
