class Player
attr_reader :name, :symbol #attribut d'un joueur

    def initialize(name, symbol)
    @name = name.to_s 
    @symbol = symbol #determiner sur quel symbole (X, O) le joueur va jouer
    end
    def welcome
        puts "Le jouer #{name} joue avec le symbole #{symbol}!"
    end 
end
