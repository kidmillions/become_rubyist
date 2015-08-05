class Lexicon

  def initialize()
    @dict = {
      'direction'=> ["north", "south", "east", "west"],
      'verb'=> ["go", "kill", "eat"],
      'stop'=> ["the", "in", "of"],
      'noun'=> ["bear", "princess"]
    }
  end


  attr_reader :dict

  def scan(sentence)
    sent = sentence.split
    result = []

    for test_word in sent
      begin
        num = Integer(test_word)
        result.push(["number", num])
      rescue

        found = false

        @dict.each do |type, words|
          if words.include?(test_word) then
            result.push([type, test_word])
            found = true
            break
          end
        end

        unless found
          result.push(['error', test_word])
        end

      end
    end
    return result
  end

end


Lexicon = Lexicon.new()
