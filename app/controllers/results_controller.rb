class ResultsController < ApplicationController

  def square
    
    render ({ :template => "results_templates/square"})

  end

  def square_root
    render ({ :template => "results_templates/square_root"})
  end

  def payment
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i
    @pv = params.fetch("user_pv").to_f
  
    @rate = @apr / 100%
    @num_period = 12 * @years
    @payment_upper = @rate * @pv
    @payment_lower = 1- ((1+@rate) ** (@num_period * (-1)))
    @payment = @payment_upper / @payment_lower
    
    render ({ :template => "results_templates/payment"})
  end

  def random

    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @random = rand(@min..@max)
  
    render ({ :template => "results_templates/random"})
  end


end
