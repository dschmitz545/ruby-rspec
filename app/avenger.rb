class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def adicionar(avenger)
        self.list.push(avenger)
    end

end