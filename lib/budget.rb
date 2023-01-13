class Budget 
    attr_reader :name,
                :year,
                :departments
    def initialize(info)
        @name = info[:name]
        @year = info[:year]
        @departments = []
    end

    def add_department(department)
        departments << department
    end
end