==================================================================
# from controller
==================================================================

	@results = Bike.search(params[:search])

==================================================================
# from model
==================================================================

	class Bike < ActiveRecord::Base
		def self.search(search)
		  if search
				@results = {
				  "Frame number" => find(:all, :conditions => ["framenumber like ?", "%#{search}%"]),
					"Manufacturer" => find(:all, :conditions => ["manufacturer like ?", "%#{search}%"]),
				  "Model" => find(:all, :conditions => ["modelname like ?", "%#{search}%"]),
				  "Frame type" => find(:all, :conditions => ["frametype like ?", "%#{search}%"]),
				  "Colour" => find(:all, :conditions => ["colour like ?", "%#{search}%"]),
				  "Description" => find(:all, :conditions => ["description like ?", "%#{search}%"])
				}
				@results
		  else
		    find(:all)
		  end
		end
	end

==================================================================
# from view
==================================================================


	<ul class="nav nav-tabs">
		<% @results.each do |key, value| %>
			<% if key == "Frame number" %><%# Always show Frame number %>
					<li class="active">
						<a href="#<%= key.downcase.gsub(' ', '-') %>" data-toggle="tab"
						><%= key %> <span class="badge"><%= value.count %></span></a>
					</li>
			<% elsif value.count > 0 %><%# Show anything else that has a value > 0 %>
					<li>
						<a href="#<%= key.downcase.gsub(' ', '-') %>" data-toggle="tab"
						><%= key %> <span class="badge"><%= value.count %></span></a>
					</li>
			<% end %>
		<% end %>
	</ul>

	<div class="tab-content">
		<% @results.each do |key, value| %>
			<% if key == "Frame number" %><%# Always show Frame number and make it active %>
				<div class="tab-pane active" id="<%= key.downcase.gsub(' ', '-') %>">
			<% elsif value.count > 0 %><%# Show anything else that has a value > 0 %>
				<div class="tab-pane" id="<%= key.downcase.gsub(' ', '-') %>">
			<% end %>
			<% if value.count > 0 %><%# render list only if ther's bikes %>
					<%= render 'bikelist', :list => value %>
				</div>
			<% elsif key == "Frame number" && value.count == 0 %>
			<%# if no results for frame number%>
					<h2>No bike frame matches &ldquo;<em><%= params[:search] %></em>&rdquo;
					<small>Try another category</small></h2>
				</div>
			<% end %>
		<% end %>
	</div>


