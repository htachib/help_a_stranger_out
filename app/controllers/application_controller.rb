class ApplicationController < ActionController::Base
	include StatCounter
	protect_from_forgery with: :exception
	before_action :set_public_deeds

	def set_public_deeds
		@public_deeds = public_deed_list
	end

	private

	def public_deed_list
		arr = []
		Deed.all.each do |deed|
			h = deed_obj(deed)
			arr.push(h)
		end
		arr
	end

	def deed_obj(deed)
		return {
			id: deed.id,
			title: deed.title,
			thumbnail: deed.thumbnail,
			description: deed.description,
			funding_amount: deed.funding_amount,
			count_completed: deed.count_completed,
			count_in_progress: deed.count_in_progress,
			count_smiles_given: deed.count_smiles_given,
			count_stories: deed.count_stories
		}
	end
end
