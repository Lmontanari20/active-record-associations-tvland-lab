class Show < ActiveRecord::Base
    # A show has many characters and has many actors through characters.
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        self.actors.map {|actor|
            actor.full_name
        }
    end
end