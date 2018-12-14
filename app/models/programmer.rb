class Programmer < ActiveRecord::Base
	def show_attributes		
		["home_country", "quote", "claim_to_fame"].map do |attr|
			
			value = send(attr)
			
			if value
				label = attr.gsub("_", " ").titlecase
				{
					label: label,
					value: value
				}
			end

		end.compact
	end
end
