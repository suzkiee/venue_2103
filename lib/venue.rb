class Venue
    attr_reader :name,
                :capacity,
                :patrons

    def initialize(name, capacity)
        @name     = name 
        @capacity = capacity
        @patrons  = []
    end

    def add_patron(name)
        patrons << name
    end

    def yell_at_patrons
        patrons.map {|patron| patron.upcase}
    end

    def over_capacity? 
        return false if @patrons.length < 4
        true
    end

    def kick_out
        while over_capacity? == true 
           @patrons.shift 
        end
    end
end
