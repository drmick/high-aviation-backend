class Order < ApplicationRecord
  after_initialize :default_values
  validates :status, presence: true, :inclusion => { :in => %w(new payed fail)}
  validates :flight_number, presence: true
  validates :flight_date, presence: true
  validates :flight_from, presence: true
  validates :flight_to, presence: true
  validates :external_key, presence: false
  validates :guid, presence: true
  validates :user_id, presence: false

  validates :middle_name, presence: false
  validates :first_name, :last_name,:phone, :email,  :presence => true, :if => :fizik?

  validates :inn,  :kpp,  :bic,  :ur_name,  :account,  :corr_account,  :presence => true, :if => :urik?

  def fizik?
    self.payer_type == 1
  end

  def urik?
    self.payer_type == 2
  end

  private
  def default_values
    self.guid ||= SecureRandom.uuid
    self.status = 'new'
  end

  has_many :passengers, dependent: :destroy
  accepts_nested_attributes_for :passengers, allow_destroy: true
end
