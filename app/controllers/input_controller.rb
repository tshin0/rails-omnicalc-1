class InputController < ApplicationController

  def square
    render ({ :template => "input_templates/square"})
  end

  def square_root
    render ({ :template => "input_templates/square_root"})
  end

  def payment
    render ({ :template => "input_templates/payment"})
  end

  def random
    render ({ :template => "input_templates/random"})
  end

end
