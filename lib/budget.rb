class Budget 
    attr_reader :name,
                :year
    def initialize(info)
        @name = info[:name]
        @year = info[:year]
    end
end