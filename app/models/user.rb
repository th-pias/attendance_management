class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :attendances

  def full_name
    if first_name.present? && last_name.present?
      first_name + ' ' + last_name
    elsif first_name.present?
      first_name
    elsif last_name.present?
      last_name
    else
      'Name: Unknown'
    end
  end
end
