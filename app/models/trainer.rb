class Trainer < ActiveRecord::Base
  has_many :program_trainers
  has_many :programs, through: :program_trainers
  has_many :comments, as: :commentable
end
