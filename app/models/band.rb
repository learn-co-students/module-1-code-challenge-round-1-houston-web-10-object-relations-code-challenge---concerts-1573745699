class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def concert
        concerts = []
        Concert.all.each do | play |
           if play.band == self
            concerts.push(play)
        end
    end
    return concerts
end
end
