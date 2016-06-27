class Attendance < ActiveRecord::Base
  belongs_to :user

  def self.current_date_attendances
    where(date: Date.today).order(id: :desc)
  end
end
