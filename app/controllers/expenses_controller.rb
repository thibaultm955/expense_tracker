class ExpensesController < ApplicationController
    def index
  
      @expenses = Expense.all
  
        
    end

    def new
      @expenses = Expense.new
      @categories = Category.all

    end
  end
  