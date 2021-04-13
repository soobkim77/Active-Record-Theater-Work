class Role < ActiveRecord::Base

    has_many :auditions

    def self.auditions
        Audition.where(role_id: self.id)
    end

    def self.actors
        Audition.where(role_id: self.id).pluck(:actor)
    end

    def self.location
        Audition.where(role_id: self.id).pluck(:location)
    end

    def self.lead
       unless Audition.find_by(role_id: self.id, hired: true)
        puts "no actor has been hired for this role"
       end
    end

    def self.understudy
        unless Audition.where(role_id: self.id).second
            puts "no actor has been hired for understudy for this role"
        end
    end

end