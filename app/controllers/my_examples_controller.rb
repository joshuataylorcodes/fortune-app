class MyExamplesController < ApplicationController

  # array = array.shuffle
  # rand_fortune = array[0]

  def feature1_method
    array = ["you will get a dollar tomorrow", "you will get 0 dollars tomorrow", "you will get two dollars tomorrow"]
    x = rand(0..2)
    render json: { message: array[x] }
  end

  def rand_method
    # numbers = []
    # 6.times do
    #   y = rand(1..60).to_i
    #   numbers << y
    # end
    # render json: { Lotto: numbers }

    numbers = []
    index = 0
    while index < 6
      x = rand(0..60)
      numbers << x
      index = index += 1
    end
    render json: { lotto: numbers }
  end
end
