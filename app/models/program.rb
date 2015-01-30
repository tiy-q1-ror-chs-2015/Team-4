class Program < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :trainer
end
