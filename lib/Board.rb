class Board 
	attr_accessor :array_board, :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3

	def initialize
	  @array_board = []
	  @a1 = BoardCase.new(1)
	  @array_board << @a1
	  @a2 = BoardCase.new(2)
	  @array_board << @a2
	  @a3 = BoardCase.new(3)
	  @array_board << @a3
	  @b1 = BoardCase.new(4)
	  @array_board << @b1
	  @b2 = BoardCase.new(5)
	  @array_board << @b2
	  @b3 = BoardCase.new(6)
	  @array_board << @b3
	  @c1 = BoardCase.new(7)
	  @array_board << @c1
	  @c2 = BoardCase.new(8)
	  @array_board << @c2
	  @c3 = BoardCase.new(9)
	  @array_board << @c3

	end

	def play_turn(current_player)
		player1_symbol = "X"
		player2_symbol = "O"

		
		turn_number = 1
		turn_played = ""  
		

		while turn_played != "ok"
         
		    puts @current_player
			puts "c'est à toi de jouer"
    
			puts "Sur quelle case veux-tu jouer ?"
			puts "> "

			chosen_number = gets.chomp.to_i 

			case chosen_number
			when 1 
			  if @a1.case_value == "" && @current_player == @player1
				@a1.case_value = player1_symbol
        
				turn_played = "ok"
				
        	  elsif @a1.case_value == "" && @current_player == @player2
        			@a1.case_value = player2_symbol
					turn_played = "ok"
					
			  else puts "Cette case a déjà été jouée"
				turn_played = "false"
			  end
			
			when 2 
				if @a2.case_value == "" && @current_player == @player1
          			@a2.case_value = player1_symbol
          			turn_played = "ok"
          		elsif @a2.case_value == "" && @current_player == @player2
          			@a2.case_value = player2_symbol
          			turn_played = "ok"
          		else puts "Cette case a déjà été jouée"
          			turn_played = "false"
          		end
			when 3
				if @a3.case_value == ""
					@a3.case_value = player1_symbol
					turn_played = "ok"
				else puts "Cette case a déjà été jouée"
					turn_played = "false"
				end
			when 4
				if @b1.case_value == ""
				   @b1.case_value = player1_symbol
					turn_played = "ok"
				else puts "Cette case a déjà été jouée"
					turn_played = "false"
				end
			when 5
				if @b2.case_value == ""
					@b2.case_value = player1_symbol
					 turn_played = "ok"
				else puts "Cette case a déjà été jouée"
					 turn_played = "false"
				end
			when 6
				if @b3.case_value == ""
					@b3.case_value = player1_symbol
					 turn_played = "ok"
				else puts "Cette case a déjà été jouée"
					 turn_played = "false"
				end
			when 7
				if @c1.case_value == ""
					@c1.case_value = player1_symbol
					 turn_played = "ok"
				else puts "Cette case a déjà été jouée"
					 turn_played = "false"
				end
			when 8
				if @c2.case_value == ""
					@c2.case_value = player1_symbol
					 turn_played = "ok"
				else puts "Cette case a déjà été jouée"
					 turn_played = "false"
				end
			when 9
				if @c3.case_value == ""
					@c3.case_value = player1_symbol
					 turn_played = "ok"
				else puts "Cette case a déjà été jouée"
					 turn_played = "false"
				end
			else 
				puts "Cette case a déjà été jouée"
				turn_played = "false"
			end
			turn_number += 1
		end    
		
	end

	def victory
    if @a1.case_value == "X" && @a2.case_value == "X" && @a3.case_value == "X"
      return true
	  elsif @a1.case_value == "O" && @a2.case_value == "O" && @a3.case_value == "O"
		  return true 
    else
      return false
    end
	
	end

end
