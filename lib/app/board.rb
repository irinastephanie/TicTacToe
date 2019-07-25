
class Board #le plateau.
    attr_accessor :boardcase 
    #la classe a 1 attr_accessor : un array qui contient les BoardCases.
    def initialize
        @boardcase = [
            "0", "1", "2",
            "3", "4", "5",
            "6", "7", "8"
        ]
    end
    def show_board
        puts "#{@boardcase[0..2].join(" | ")}"
        puts "--|---|--"
        puts "#{@boardcase[3..5].join(" | ")}"
        puts "--|---|--"
        puts "#{@boardcase[6..8].join(" | ")}"
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    end
    def get_boardcase
        puts "C'est ton tour, choisis une case entre 0 et 8"
        boardcase = gets.chomp.to_i
        boardcase
        #demande au bon joueur ce qu'il souhaite faire
    end 
    def choose_boardcase(index, symbol)
        boardcase[index] = symbol
    #une méthode change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    end
    def full?
        # Indique si la case est pleine
        i = 0
        @boardcase.each { |c| i += 1 if c != ' ' }
        i == 9
      end
    def wins? 
    wins = []
    win1 = [@boardcase[0], @boardcase[1], @boardcase[2]]
    win2 = [@boardcase[3], @boardcase[4], @boardcase[5]]
    win3 = [@boardcase[6], @boardcase[7], @boardcase[8]]
    win4 = [@boardcase[0], @boardcase[3], @boardcase[6]]
    win5 = [@boardcase[1], @boardcase[4], @boardcase[7]]
    win6 = [@boardcase[2], @boardcase[5], @boardcase[8]]
    win7 = [@boardcase[0], @boardcase[4], @boardcase[8]]
    win8 = [@boardcase[2], @boardcase[4], @boardcase[6]]
    wins << win1 << win2 << win3 << win4 << win5 << win6 << win7 << win8
        wins.each do |i|
        if i == ['O', 'O', 'O'] || i == ['X', 'X', 'X']
        end
    end
end
