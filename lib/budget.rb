class Budget 
    attr_reader :name,
                :year,
                :departments,
                :employees

    def initialize(info)
        @name = info[:name]
        @year = info[:year]
        @departments = []
        @employees = []
    end

    def add_department(department)
        departments << department
    end

    def add_employee(employee)
        employees << employee
    end

    def department_expenses_under(amount)
        department = departments.find_all { |d| d.expenses < amount }
        department
    end


    def employees_salarys
        employee_salaries = employees.map { |e| e.salary }
    end
end