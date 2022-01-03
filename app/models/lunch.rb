class Lunch < ApplicationRecord
    attachment :image
    belongs_to :user
    has_many :favorites, dependent: :destroy
    
    with_options presence: true do
        validates :title
        validates :body
        #validates :image
        validates :score
    end
    
  def avg_score
    unless self.lunches.empty?
      lunches.average(:score).round(1).to_f
    else
      0.0
    end
  end

  def lunch_score_percentage
    unless self.lunches.empty?
      lunches.average(:score).round(1).to_f*100/5
    else
      0.0
    end
  end
end
