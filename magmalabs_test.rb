class MagmaLabs

    def magmalabs_test(board)
        if board == nil || board.length == 0
            return
        end
        
        copy = get_board_copy(board)
        
        for f in (0..board.length - 1)
            for c in (0..board[0].length - 1)
                update_boards(board, copy, f, c, count_alive_cells(copy, f, c))
            end
        end
        print_board(board)
    end

    private
    def get_board_copy(board)
       board.map { |row| row.clone }
    end

    private
    def count_alive_cells(board, f, c)
        allive_cells = 0
        for i in (f-1..f + 1)
            for j in (c-1..c + 1)
                if i >= 0 && i < board.length && 
                   j >= 0 && j < board[0].length && 
                   (i != f || j != c) && 
                   board[i][j] == 1
                    allive_cells += 1
                end
            end
        end
        allive_cells
    end

    private
    def update_boards(board, copy, f, c, allive_cells)
    	if copy[f][c] == 1
            if allive_cells < 2
                board[f][c] = 0
    		elsif allive_cells > 3
                board[f][c] = 0
            else 
                board[f][c] = 1
            end
        else
            if allive_cells == 3 
                board[f][c] = 1
            end
        end
    end

    private
    def print_board(board)
    	for f in (0..board.length - 1)
            for c in (0..board[0].length - 1)
            	print " #{board[f][c]}" 
            end
            puts ""
        end
    end
end

ml = MagmaLabs.new
ml.magmalabs_test([[1,1,0,1],[1,0,0,1],[0,0,0,1],[1,1,1,1],[0,1,1,0]])
