require './lib/department'
require './lib/employee'

RSpec.describe Department do 
    
    let(:customer_service) {Department.new("Customer Service")}

    describe '#initialize' do
        it "exists" do 
            expect(customer_service).to be_an_instance_of(Department)
        end

        it "has attributes" do
            expect(customer_service.name). to eq("Customer Service")
        end

        it "has starts with no employees" do 
            expect(customer_service.employees).to ([])
        end
    end


end


