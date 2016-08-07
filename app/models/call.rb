class Call < ActiveRecord::Base
    def who
        who = PhoneNumber.find_by("number = ?", self.phone_number) 
        if who.present? then
            who.name
        else
            "unknown"
        end
    end
end
