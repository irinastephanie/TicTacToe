class Game #le jeu, initialise partie, joue un tour, fin de partie
    attr_accessor :player, :current_player, :board, :status  
    #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
    def initialize(player, board, current_player, status)
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
        @player = player
        @board = board
        @status = "on going"
        @current_player = ""
end


    def turn(board)
        puts "C'est le tour de #{@current_player.name}. Choisis une case entre 0 et 8: "
        boardcase = gets.chomp.to_i
        if boardcase > 8 || boardcase < 0
          puts "Le chiffre doit être entre 0 et 8"
        elsif @current_player.choose_boardcase(boardcase) != false
          @victory = @current_player if @current_player.victory?
          @turn += 1
          switch_player
        #méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    end
    def switch_player
        @current_player = @current_player == @player1 ? @player2 : @player1
      end
    def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    end
    def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    end    
    end
    
