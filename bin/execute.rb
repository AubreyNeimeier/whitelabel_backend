#!/usr/bin/env ruby
require 'irb'
require_relative '../app/models/Wrapper'

test_one = "After lights give bring that seas subdue fruit lights, seed. There without wherein green be you're, waters called made. 
It bearing he second brought face. Created for fowl divided. Living second signs god very wherein darkness let signs very they're." 
Wrapper.wrap(test_one, 20)


test_ariana = "Ariana Grande is a woman of her word, dropping her new album just six months after her last one—and Thank U, Next turns out to be her best album yet. Sweetener was full of potential hits; the old-school model would have been to milk it for a couple of years, tour it to death, then start the cycle all over again. Instead, Grande went back in the studio while her energy was raging and banged out another album in two weeks. This is her Amnesiac to Sweetener’s Kid A. The theme is basically, “Break up with your music industry, I’m bored."
Wrapper.wrap(test_ariana, 40)

