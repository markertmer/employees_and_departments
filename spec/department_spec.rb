require './spec/spec_helper.rb'

describe Department do
  describe 'Iteration 2' do
    before(:each) do
      @customer_service = Department.new("Customer Service")
      @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
      @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    end

    it 'exists' do
      expect(@customer_service).to be_instance_of Department
    end

    it 'has a name' do
      expect(@customer_service.name).to eq "Customer Service"
    end

    it 'starts with no employees' do
      expect(@customer_service.employees).to eq []
    end

    it 'can hire employees' do
      @customer_service.hire(@bobbi)
      @customer_service.hire(@aaron)

      expect(@customer_service.employees).to eq [@bobbi, @aaron]
    end

    it 'starts with no expenses' do
      expect(@customer_service.expenses).to be 0
    end

    it 'can accrue expenses' do
      @customer_service.expense(100)
      @customer_service.expense(25)

      expect(@customer_service.expenses).to be 125
    end
  end

  describe 'Iteration 3' do
    before(:each) do
      @customer_service = Department.new("Customer Service")
      @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
      @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    end
  end
end
