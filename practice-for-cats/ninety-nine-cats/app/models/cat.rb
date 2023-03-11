# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord
    CAT_COLORS = ['black', 'white', 'grey', 'brown', 'yellow']

    validates :birth_date, presence: true
    validate :birth_date_cannot_be_future
    validates :color, presence: true, inclusion: { in: CAT_COLORS}
    validates :name, presence: true
    validates :sex, presence: true, inclusion: { in: ['M', 'F']}

    def birth_date_cannot_be_future
        errors.add(:birth_date, "Cannot be in the future!") if birth_date > Date.today
    end

    # def time_ago_in_words
    #     from_time = Time.now - self.birth_date
    # end

    def age
        Time.zone.now.year - self.birth_date.year
    end
end
