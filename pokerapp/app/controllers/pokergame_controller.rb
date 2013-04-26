class PokergameController < ApplicationController

def deal
  suit = ["Spades","Clubs","Diamonds","Hearts"]
  card_value = ["2","3","4","5","6","7","8","9","10","Jack","Queen","King","Ace"]
  card1 = card_value[rand(13)] + " of " + suit[rand(4)]
  card2 = card_value[rand(13)] + " of " + suit[rand(4)]
  while card2 == card1
    card2 = card_value[rand(13)] + " of " + suit[rand(4)]
  end
  card3 = card_value[rand(13)] + " of " + suit[rand(4)]
  while card3 == card1 || card3 == card2
    card3 = card_value[rand(13)] + " of " + suit[rand(4)]
  end
  card4 = card_value[rand(13)] + " of " + suit[rand(4)]
  while card4 == card1 || card4 == card2 || card4 == card3
    card4 = card_value[rand(13)] + " of " + suit[rand(4)]
  end
  card5 = card_value[rand(13)] + " of " + suit[rand(4)]
  while card5 == card4 || card5 == card3 || card5 == card2 || card5 == card1
    card5 = card_value[rand(13)] + " of " + suit[rand(4)]
  end
  @cards=[card1,card2,card3,card4,card5]
  render 'pokergame'
end

end
