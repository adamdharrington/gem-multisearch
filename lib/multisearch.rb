require "multisearch/version"
require 'active_record'
module Multisearch

		def multisearch(searchterm, columnlist)
			@searchterm = searchterm
			@columnlist = columnlist
			@count = columnlist.count
			@results = Hash.new

			if @searchterm
				# get the first coloumn regardless of content length
				@firstkey = @columnlist[0]
				@firstcol = @firstkey.downcase.gsub(' ', '')
				@results[@firstkey] = self.where("#{@firstcol} like ?", "%#{@searchterm}%").to_a

				# iterate through rest of columnlist keeping only keys with values
				if @count > 1

					@columnlist[1..@count].each do |key|
						@col = key.downcase.gsub(' ', '')
						@finds = self.where("#{@col} like ?", "%#{@searchterm}%").to_a
						@results[key] = @finds if @finds.count > 0 
					end

				end

				return @results
			else
				self.find(:all)
			end

		end


end
ActiveRecord::Base.extend Multisearch
