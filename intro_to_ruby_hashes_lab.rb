def monopoly
	monopoly = {}
  monopoly[:railroads] = {}
  return monopoly
end

def monopoly_with_second_tier
	array = monopoly
	array[:railroads][:pieces] = 4
	array[:railroads][:names] = {}
	array[:railroads][:rent_in_dollars] = {}
	return array
end

def monopoly_with_third_tier
	array = monopoly_with_second_tier
	array[:railroads][:rent_in_dollars] = {
	  :one_piece_owned => 25, 
	two_pieces_owned: 50, 
	three_pieces_owned: 100, 
	four_pieces_owned: 200
	}
	array[:railroads][:names] = {
	  :reading_railroad => {},
	  :pennsylvania_railroad => {},
	  :b_and_o_railroad => {},
	  :shortline => {}
	  
	}
	return array
end

def monopoly_with_fourth_tier
	array = monopoly_with_third_tier
		array[:railroads][:names] = {
	  :reading_railroad => {"mortgage_value" => "$100"},
	  :pennsylvania_railroad => {"mortgage_value" => "$200"},
	  :b_and_o_railroad => {"mortgage_value" => "$400"},
	  :shortline => {"mortgage_value" => "$800"}
	  
	}
	return array
end



print monopoly_with_fourth_tier[:railroads][:names][:b_and_o_railroad]["mortgage_value"]