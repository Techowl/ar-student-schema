require_relative '../../db/config'

class Student < ActiveRecord::Base

  attr_accessor :first_name, :last_name, :gender, :birthday, :email, :phone

  def initialize(args = {})
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    @gender = args[:gender]
    @birthday = args[:birthday]
    @email = args[:email]
    @phone = args[:phone]
  end

  def name
    "#{first_name} #{last_name}"
  end

  def age
    (Time.new.to_date - birthday).to_i / 365
  end
end