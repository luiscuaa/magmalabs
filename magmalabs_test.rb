#This class will give the solution to the proposed problem (Game of Life)
class MagmaLabs

    $board
    $copy
    $num_rows
    $num_cols

    # Entry point, this will receive the board to be analyzed
    def magmalabs_test(board)
        $board = board
        if board != nil && $board.length > 0
            get_solution()
            print_board() 
        else
            return
        end
    end

    # Once that we know that the board is a valid one, look for the solution
    private
    def get_solution()
        $num_rows = $board.length
        $num_cols = $board[0].length
        
        $copy = $board.map { |row| row.clone }
        
        for row in (0..$num_rows - 1)
            for col in (0..$num_cols - 1)
                update_boards(row, col, count_alive_cells(row, col))
            end
        end
    end

    # Count the number of alive neighbors based on the coordinates received as argument
    private
    def count_alive_cells(row, col)
        allive_cells = 0
        for idx in (row-1..row+ 1)
            for jdx in (col-1..col + 1)
                if is_in_bounds(idx, jdx) &&
                    (idx != row || jdx != col) &&
                    $copy[idx][jdx] == 1
                    allive_cells += 1
                end
            end
        end
        allive_cells
    end

    # Check if the coordinates are in bounds
    private
    def is_in_bounds(idx, jdx)
        idx >= 0 && idx < $num_rows && jdx >= 0 && jdx < $num_cols
    end

    #Update the original board based on the number of alive neighbors
    #  1. Any living cell with fewer than two live neighbours dies, as if caused by underpopulating
    #  2. Any living cell with more than three live neighbours dies, as if by overcrowding
    #  3. Any living cell two or three live neighbours lives on to the next generation
    #  4. Any dead cell with exactly three live neighbours becomes a live cell
    private
    def update_boards(row, col, allive_cells)
    	if $copy[row][col] == 1
            if allive_cells < 2 || allive_cells > 3
                $board[row][col] = 0
            else 
                $board[row][col] = 1
            end
        else
            if allive_cells == 3 
                $board[row][col] = 1
            end
        end
    end

    # Print the final result
    private
    def print_board()
        for row in (0..$num_rows - 1)
            for col in (0..$num_cols - 1)
            	print " #{$board[row][col]}" 
            end
            puts ""
        end
    end
end

ml = MagmaLabs.new
ml.magmalabs_test([[1,1,0,1],[1,0,0,1],[0,0,0,1],[1,1,1,1],[0,1,1,0]])
