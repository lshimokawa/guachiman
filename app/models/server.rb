class Server < ActiveRecord::Base
  
  validates :name,    presence: true
  validates :address, presence: true
  validates :port,    presence: true, numericality: true

  has_many :checks

  def self.perform_checks!
    all.each(&:check!)
  end

  def server_and_port
    "#{address}:#{port}"
  end

  def check!
    current_check = checks.create
    current_check.perform!
  end
  
end
