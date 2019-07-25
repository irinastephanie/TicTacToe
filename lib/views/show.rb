class Show
def show_board(board)
        puts "#{@boardcase[0..2].join(" | ")}"
        puts "--|---|--"
        puts "#{@boardcase[3..5].join(" | ")}"
        puts "--|---|--"
        puts "#{@boardcase[6..8].join(" | ")}"
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
end
end
