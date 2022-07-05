class Post < ApplicationRecord
    validates :schedule, presence: true
    validates :start, presence: true
    validates :end, presence: true
    validate :date_check

    def date_check
        return false if self.end.blank? || self.start.blank?
        if self.start > self.end
            errors.add(:end,"は開始日より前の日付は登録できません")
        end
        
    end
end
