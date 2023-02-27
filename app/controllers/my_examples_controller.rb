class MyExamplesController < ApplicationController

  # array = array.shuffle
  # rand_fortune = array[0]

  def feature1_method
    array = ["you will get a dollar tomorrow", "you will get 0 dollars tomorrow", "you will get two dollars tomorrow"]
    x = rand(0..2)
    #render json: { message: array[x] }

    render json: { fortune: array.sample }
  end

  def rand_method
    # numbers = []
    # 6.times do
    #   y = rand(1..60).to_i
    #   numbers << y
    # end
    # render json: { lotto: numbers }

    numbers = []
    index = 0
    while index < 6
      x = rand(0..60)
      numbers << x
      index = index += 1
    end
    render json: { lotto: numbers }
  end

  def ninenine_bottles
    array = []
    index = 0
    x = 99
    y = 98
    n = "no"
    while index < 99
      lyric_line = "#{x} bottles of beer on the wall, #{x} bottles of beer,
      Take one down and pass it around, #{y} bottles of beer on the wall."
      array << lyric_line
      x = x - 1
      y = y - 1
      index = index + 1
    end
    last_lyrics = "#{x} bottles of beer on the wall, #{x} bottles of beer,
    Take one down and pass it around, #{n} bottles of beer on the wall."
    array << last_lyrics
    x = 99
    last_lyrics = "#{n} bottles of beer on the wall, #{n} bottles of beer,
    Take one down and pass it around, #{x} bottles of beer on the wall."
    array << last_lyrics

    render json: { lyrics: array }
  end
end
