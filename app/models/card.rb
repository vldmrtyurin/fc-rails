class Card < ActiveRecord::Base
  validates :original_text, :translated_text, presence: true
  validate :original_not_equal_translated

  def original_not_equal_translated
    if original_text == translated_text
      errors.add(:original_text, "can't be equals translated_text")
    end
  end
end
