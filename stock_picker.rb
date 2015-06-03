def pick_highest_stock(stock_array)
  highest_return = 0
  answer = []

  stock_array.each_with_index { |val, index|
    calculated_array = calculate_return(stock_array, index)
    roi = calculated_array[1]
    if roi > highest_return
      highest_return = roi
      answer[0] = index
      answer[1] = calculated_array[0]
    end
  }

  puts answer.join(', ')
end

=begin
	stock_array: Array to calculate the roi from
	index: To start the search for the roi
	answer[0]: Index to sell the stock
	answer[1]: Amount of highest stock
=end
def calculate_return(stock_array, index)
  answer = []
  highest_return = -100


  for i in index..stock_array.length - 1
    roi = stock_array[i] - stock_array[index]
    if roi > highest_return
      highest_return = roi
      answer[0] = i

    end
  end

  answer[1] = highest_return
  answer
end

def print_array(stock_array, index)
  puts stock_array
  puts index


end

stock_array = [17,3,6,9,15,8,6,1,10]

pick_highest_stock stock_array