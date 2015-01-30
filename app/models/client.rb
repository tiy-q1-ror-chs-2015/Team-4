class Client < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  has_many :program_clients
  has_many :programs, through: :program_clients
end
