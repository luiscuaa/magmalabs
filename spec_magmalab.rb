require 'minitest/autorun'
require_relative 'magmalabs_test'

describe MagmaLabs do
	
	before do
		@obj = MagmaLabs.new
	end

	it "return nil due to non declared array" do
		assert_nil(@obj.magmalabs_test(nil), "1. Nil value expected due to undefined board")
	end

	it "return nil due to an empty array" do
		assert_nil(@obj.magmalabs_test([]), "2. Nil value expected due to empty board")
	end

	it "Alive cell with 8 dead neighbors" do
		board = [[0,0,0],[0,1,0],[0,0,0]]
		@obj.magmalabs_test(board)
		assert_equal(0, board[1][1], "3. Expected to be dead")
	end

	it "Alive cell with 7 dead neighbors" do
		board = [[1,0,0],[0,1,0],[0,0,0]]
		@obj.magmalabs_test(board)
		assert_equal(0, board[1][1], "4. Expected to be dead")
	end

	it "Alive cell with 6 dead neighbors" do
		board = [[1,0,0],[0,1,0],[0,0,1]]
		@obj.magmalabs_test(board)
		assert_equal(1, board[1][1], "5. Expected to be alive")
	end

	it "Alive cell with 5 dead neighbors" do
		board = [[1,0,0],[1,1,0],[0,0,1]]
		@obj.magmalabs_test(board)
		assert_equal(1, board[1][1], "6. Expected to be alive")
	end

	it "Alive cell with 4 dead neighbors" do
		board = [[1,0,1],[1,1,0],[0,0,1]]
		@obj.magmalabs_test(board)
		assert_equal(0, board[1][1], "7. Expected to be dead")
	end

	it "Alive cell with 3 dead neighbors" do
		board = [[1,0,1],[1,1,0],[1,0,1]]
		@obj.magmalabs_test(board)
		assert_equal(0, board[1][1], "8. Expected to be dead")
	end

	it "Alive cell with 2 dead neighbors" do
		board = [[1,0,1],[1,1,0],[1,1,1]]
		@obj.magmalabs_test(board)
		assert_equal(0, board[1][1], "9. Expected to be dead")
	end

	it "Alive cell with 1 dead neighbors" do
		board = [[1,0,1],[1,1,1],[1,1,1]]
		@obj.magmalabs_test(board)
		assert_equal(0, board[1][1], "10. Expected to be dead")
	end

	it "Alive cell with 0 dead neighbors" do
		board = [[1,1,1],[1,1,1],[1,1,1]]
		@obj.magmalabs_test(board)
		assert_equal(0, board[1][1], "11. Expected to be dead")
	end

	it "Dead cell with 8 alive neighbors" do
		board = [[1,1,1],[1,0,1],[1,1,1]]
		@obj.magmalabs_test(board)
		assert_equal(0, board[1][1], "12. Expected to be dead")
	end

	it "Dead cell with 7 alive neighbors" do
		board = [[0,1,1],[1,0,1],[1,1,1]]
		@obj.magmalabs_test(board)
		assert_equal(0, board[1][1], "13. Expected to be dead")
	end

	it "Dead cell with 6 alive neighbors" do
		board = [[0,1,1],[1,0,1],[1,1,0]]
		@obj.magmalabs_test(board)
		assert_equal(0, board[1][1], "14. Expected to be dead")
	end

	it "Dead cell with 5 alive neighbors" do
		board = [[0,1,1],[1,0,1],[0,1,0]]
		@obj.magmalabs_test(board)
		assert_equal(0, board[1][1], "15. Expected to be dead")
	end

	it "Dead cell with 4 alive neighbors" do
		board = [[0,1,1],[0,0,1],[0,1,0]]
		@obj.magmalabs_test(board)
		assert_equal(0, board[1][1], "16. Expected to be dead")
	end

	it "Dead cell with 3 alive neighbors" do
		board = [[0,1,0],[0,0,1],[0,1,0]]
		@obj.magmalabs_test(board)
		assert_equal(1, board[1][1], "17. Expected to be dead")
	end

	it "Dead cell with 2 alive neighbors" do
		board = [[0,0,0],[0,0,1],[0,1,0]]
		@obj.magmalabs_test(board)
		assert_equal(0, board[1][1], "18. Expected to be dead")
	end

	it "Dead cell with 1 alive neighbors" do
		board = [[0,0,0],[0,0,0],[0,1,0]]
		@obj.magmalabs_test(board)
		assert_equal(0, board[1][1], "19. Expected to be dead")
	end

	it "Dead cell with 0 alive neighbors" do
		board = [[0,0,0],[0,0,0],[0,0,0]]
		@obj.magmalabs_test(board)
		assert_equal(0, board[1][1], "20. Expected to be dead")
	end
end