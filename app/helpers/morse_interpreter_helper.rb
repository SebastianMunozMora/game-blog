module MorseInterpreterHelper
  def interpretCode(code)

    %x[python3 ./app/customScripts/morseInterpreter.py #{code}]
  end
end
