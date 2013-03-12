

atom_feed do |feed|
	feed.title("The Bloggr Super-Duper News Feed")
	  feed.updated(@racingteams.first.created_at)
	  @racingteams.each do |racingteam|
	    feed.entry(racingteam) do |entry|
	      	entry.title(racingteam.title)
	     	entry.content(racingteam.body, :type => 'html')
			entry.author do |author|
				author.name "Damian"
			end
		end
	end
end