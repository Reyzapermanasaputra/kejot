require_relative "kejot/version.rb"

module Kejot
  SPELL_SET1 = %w(accurate sufficient ugly useful immediate entire healthy hot efficient dramatic)
  SPELL_SET2 = %w(punch kick attack blow smash strike smack cut poke stab)

  class Hola
    def self.hi(language = "english")
      translator = Translator.new(language)
      translator.hi
    end
  end

  class Hola::Translator
    def initialize(language)
      @language = language
    end

    def hi
      case @language
      when "spanish"
        "hola mundo"
      else
        "hello world"
      end
    end
  end


  class Generator
    def self.generate
      new.generate
    end

    def generate
      "#{SPELL_SET1[rand(0..9)]} #{SPELL_SET2[rand(0..9)]}"
    end
  end
end
