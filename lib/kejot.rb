require_relative "kejot/version.rb"

module Kejot
  SPELL_SET1 = %w(accurate sufficient ugly useful immediate entire healthy hot efficient dramatic)
  SPELL_SET2 = %w(punch kick attack blow smash strike smack cut poke stab)
  class Generator
    def self.generate
      new.generate
    end

    def generate
      "#{SPELL_SET1[rand(0..9)]} #{SPELL_SET2[rand(0..9)]}"
    end
  end
end
