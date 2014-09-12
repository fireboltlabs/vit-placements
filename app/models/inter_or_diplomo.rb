class InterOrDiplomo < ActiveRecord::Base
    belongs_to :student

    validates_presence_of :board, :clz_name, :year, :marks, :perc

end
