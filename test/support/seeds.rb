Tablename.create(:col1 => "bingo", :col2 => "bingo", :col3 => "bingo",
								 :col4 => "bingo", :col5 => "bingo", :col6 => "bingo",
								 :col7 => "bingo", :col8 => "bingo")
Tablename.create(:col1 => "blank", :col2 => "blank", :col3 => "blank",
								 :col4 => "blank", :col5 => "blank", :col6 => "blank",
								 :col7 => "blank", :col8 => "blank")
Tablename.create(:col1 => "bingo", :col2 => "bingo", :col3 => "blank",
								 :col4 => "blank", :col5 => "blank", :col6 => "blank",
								 :col7 => "blank", :col8 => "bingo")
Tablename.create(:col1 => "blank", :col2 => "blank", :col3 => "blank",
								 :col4 => "bingo", :col5 => "bingo", :col6 => "blank",
								 :col7 => "blank", :col8 => "blank")
Tablename.create(:col1 => "blank", :col2 => "blank", :col3 => "blank",
								 :col4 => "bingo", :col5 => "blank", :col6 => "blank",
								 :col7 => "blank", :col8 => "blank")

=begin
id=1 will return in every search for bingo, 
id=2 will never return
id=3 will return in searches for col1, col2 and col8
id=4 will return in searches for col4 and col5
id=5 will return in searches for col4
=end
