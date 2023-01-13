require './lib/department'
require './lib/employee'
require './lib/budget'

RSpec.describe Budget do
    let(:co_budget) {Budget.new(name: 'CO Budget', year: "2023" )}
    let(:customer_service) {Department.new("Customer Service")}
    let(:bobbi) {Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})}
    let(:aaron) {Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})}

    describe '#initialize' do
        it "exists" do 
            expect(co_budget).to be_an_instance_of(Budget)
        end
    end 
end
