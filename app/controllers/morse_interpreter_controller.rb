class MorseInterpreterController < ApplicationController
  def index
    @result = %x[python3 ./app/customScripts/morseInterpreter.py]
  end
end
