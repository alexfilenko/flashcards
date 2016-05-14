class Card < ActiveRecord::Base
	validates :original_text, :translated_text, presence: true
	validates :original_text, :translated_text, length: { maximum: 20,
    too_long: "%{count} characters is the maximum allowed" }
    validates :original_text, :translated_text, uniqueness: true               
	validate  :check_original_and_translated_text
	validates :original_text, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
	

    before_create :set_time_to_now

  def check_original_and_translated_text
    if original_text == translated_text || original_text == translated_text.capitalize
      errors.add(:original_text, "can't be similar as translated text")
    end
  end

  def set_time_to_now
    self.review_date = Time.now + 3.days
  end
end

