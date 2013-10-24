require_relative '../../db/config'

class Student < ActiveRecord::Base

  validates :email, :uniqueness => true, :format => { :with => /.+@.+\..{2,}/, :message => 'No good!'}
  validates :age, :numericality => { :greater_than_or_equal_to => 5 }
  validates :phone_number_getter, :length => { :minimum => 10 }

  attr_accessor :first_name, :last_name, :gender, :birthday, :email, :phone

  # def initialize(args = {})
  #   @first_name = args.fetch[:first_name]
  #   @last_name = args[:last_name]
  #   @gender = args[:gender]
  #   @birthday = args[:birthday]
  #   @email = args[:email]
  #   @phone = args[:phone]
  # end

  def name
    "#{first_name} #{last_name}"
  end

  def age
    (Time.new.to_date - birthday).to_i / 365
  end

  def phone_number_getter
    @phone.scan(/\d/).join
  end
end