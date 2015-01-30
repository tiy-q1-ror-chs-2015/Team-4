class ProgramClient < ActiveRecord::Base
has_many :program_clients
has_many :programs, through: :program_clients

end
