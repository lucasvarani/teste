class Vehicle < ActiveRecord::Base
  has_many :mpg_submissions

  validates :year, presence: true

  MPG_SUBMISSIONS_NEEDED = 10

  def average_mpg
    if mpg_submissions.count >= MPG_SUBMISSIONS_NEEDED
      mpg_submissions.average(:mpg)
    else
      nil
    end
  end

end
