class Contact < ActiveRecord::Base
	has_no_table

	column :name, :string
	column :email, :string
	column :content, :string

	validates_presence_of :name
	validates_presence_of :email
	validates_presence_of :content
	validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
	validates_length_of :content, :maximum => 500

	# Rails is opinionated, which means there is often a "Rails Way" that is preferred
	# to other approaches. One of the slogans of the "Rails Way" is "skinny controller, 
	# fat model." The slogan exists to remind developers that separation of concerns
	# makes more modular, maintainable programs. Data manipulation goes in a model. 
	# Controllers should contain only enough code to instantiate a model and render
	# a web page.
	def update_spreadsheet
		connection = GoogleDrive.login(ENV["GMAIL_USERNAME"], ENV["GMAIL_PASSWORD"])
		ss = connection.spreadsheet_by_title('Learn-Rails-Example')
		if ss.nil?
			ss = connection.create_spreadsheet('Learn-Rails-Example')
		end
		ws = ss.worksheets[0]
		last_empty_row = 1 + ws.num_rows
		ws[last_empty_row, 1] = Time.new
		ws[last_empty_row, 2] = self.name
		ws[last_empty_row, 3] = self.email
		ws[last_empty_row, 4] = self.content
		ws.save
	end
	
end