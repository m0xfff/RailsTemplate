class Student < ActiveRecord::Base
  validates :first_name, :last_name, :email, :birth_date, :gender, presence: true
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}, uniqueness: true

  def full_name
    [title.presence, first_name, middle_name, last_name].compact.join(" ")
  end
end
