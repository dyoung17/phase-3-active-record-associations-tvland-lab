class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :networks
    
    def characters
        self.characters
    end
    def shows
        self.shows
    end
    def full_name
        fullname=self.first_name + self.last_name
    end
    def list_roles
        self.characters.map{|c| c.name}
    end
end