class Btech < ActiveRecord::Base
    belongs_to :student

    validates_presence_of :branch,:one_one_marks, :one_one_perc,:one_one_backlogs,:one_two_marks,:one_two_perc,
       :one_two_backlogs,:two_one_marks,:two_one_perc,:two_one_backlogs,:two_two_marks,:two_two_perc,
      :two_two_backlogs,:three_one_marks,:three_one_perc,:three_one_backlogs,:three_two_marks,
      :three_two_perc, :three_two_backlogs,:total_perc, :active_backlogs, :backlogs_history


end
