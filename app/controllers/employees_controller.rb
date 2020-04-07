class EmployeesController < ApplicationController

    before_action :find_employee, only: [:show]

    def index
        @employees = Employee.all
    end 

    def show
        @employee = Employee.find(params[:id])
    end 

    def new
        @employee = Employee.create(employee_params)
      
    end 

    def create
        employee = Employee.create(employee_params)
        redirect_to employee_path(employee)
    end 
    
      def edit
      end
    
      def update
        @employee.update(employee_params)
        redirect_to employee_path(@employee)
      end
    
      def destroy 
        Employee.destroy(params[:id])
        redirect_to employees_path 
      end


    private
    def find_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.require(:employee).permit(:name, :specialty)
    end

end
