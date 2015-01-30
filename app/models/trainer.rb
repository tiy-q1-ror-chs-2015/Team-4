class Trainer < ActiveRecord::Base
  has_many :programs
  has_many :clients
end
