class Song < ActiveRecord::Base

  validates :title, presence: true
  validates :released, inclusion: {in: [true, false]}
  validates :title, uniqueness: {scope: :release_year}
  validates :release_year, numericality: {less_than_or_equal_to: Time.now.year}, allow_nil: true
  validates :release_year, presence: true, if: :released
end
