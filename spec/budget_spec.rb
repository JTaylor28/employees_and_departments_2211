require './lib/department'
require './lib/employee'
require './lib/budget'

RSpec.describe Budget do
    let(:co_budget) {Budget.new(name: 'CO Budget', year: "2023" )}
    let(:customer_service) {Department.new("Customer Service")}
    let(:human_resources) {Department.new("Human Resources")}
    let(:bobbi) {Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})}
    let(:aaron) {Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})}

    describe '#initialize' do
        it "exists" do 
            expect(co_budget).to be_an_instance_of(Budget)
        end

        it "has attributes" do
            expect(co_budget.name).to eq("CO Budget")
            expect(co_budget.year).to eq("2023")
        end
    end 
        
    describe "#departments & #add_department(department)" do
        
        it "returns a list of departments and starts with none" do
            expect(co_budget.departments).to eq([])
            
            co_budget.add_department(customer_service)
            co_budget.add_department(human_resources)
            expect(co_budget.departments).to eq([customer_service, human_resources])
        end
    end

    describe "#employees & #add_employee(employee)" do
        it " returns a list of employees and starts with none" do
            expect(co_budget.employees).to eq([])
            
            co_budget.add_employee(bobbi)
            co_budget.add_employee(aaron)
            expect(co_budget.employees).to eq([bobbi, aaron])
        end
    end

    describe "#department_expenses_under(amount)" do 
        it "resutens a list of departments with expenses under the given amount" do
            expect(co_budget.department_expenses_under(500)).to eq([])
            
            co_budget.add_department(customer_service)
            co_budget.add_department(human_resources)
            customer_service.expense(100)
            human_resources.expense(100)
            expect(co_budget.department_expenses_under(500)).to eq([customer_service, human_resources])
            
            customer_service.expense(500)
            expect(co_budget.department_expenses_under(500)).to eq([human_resources])
        end
    end

    describe "#employees_salarys" do 
        it "list all employees' salaries" do
            co_budget.add_employee(bobbi)
            co_budget.add_employee(aaron)
            expect(co_budget.employees_salarys).to eq([100000, 90000])

        end
    end
end
