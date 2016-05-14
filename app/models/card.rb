class Card < ActiveRecord::Base
	validates :original_text, :translated_text presence: true,
    validates :original_text, :translated_text uniqueness: true               
end
