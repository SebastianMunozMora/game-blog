require 'tts'

def say(word)
  s = "#{word}"
  s.play("en", 1)
end

say("hello")
