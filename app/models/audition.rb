class Audition < ActiveRecord::Base
    def self.role
        Role.find_by(self.role_id)
    end

    def self.call_back
        self.hired = true
        self.save

        # aud = Audition.find_by(self)
        # aud.hired = true
        #aud.save
    end

end