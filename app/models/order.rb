class Order < ApplicationRecord
  after_initialize :default_values

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :middle_name, presence: false
  validates :phone, presence: true
  validates :email, presence: true
  validates :status, presence: true, :inclusion => { :in => %w(new payed fail)}
  validates :flight_number, presence: true
  validates :flight_date, presence: true
  validates :flight_from, presence: true
  validates :flight_to, presence: true
  validates :external_key, presence: true
  validates :guid, presence: true
  validates :user_id, presence: false
  private
  def default_values
    self.guid ||= SecureRandom.uuid
    self.status = 'new'

  end
end
