class Client < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  belongs_to :trainer
end
