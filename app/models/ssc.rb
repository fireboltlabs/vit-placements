class Ssc < ActiveRecord::Base
    belongs_to :student
    validates_presence_of :board, :school_name, :year, :marks, :perc

end
