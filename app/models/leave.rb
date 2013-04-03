class Leave < ActiveRecord::Base
  attr_accessible :approved, :consent, :end, :levaddress, :phone, :reason, :start, :student_id, :warden_id
end
