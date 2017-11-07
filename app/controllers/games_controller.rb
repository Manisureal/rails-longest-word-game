require 'json'
require 'open-uri'

class GamesController < ApplicationController


  def new
    @letters = ('a'..'z').to_a
  end

  def score

    @word = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    word_serialized = open(url).read
    word = JSON.parse(word_serialized)
    # raise

    if @word.to_a != @letters
      @answer = "Is not an english word"
    end



    # if word["found"]
    #   @answer = "Valid Word..."
    # else
    #   @answer = "bullshit"
    # end
  end
end
