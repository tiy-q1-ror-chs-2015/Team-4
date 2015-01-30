class Program < ActiveRecord::Base
  validates :name, presence: true
  has_many :program_clients
  has_many :clients, through: :program_clients
  has_many :program_trainers
  has_many :trainers, through: :program_trainers

end
