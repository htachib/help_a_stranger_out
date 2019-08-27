class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :set_user
	before_action :set_public_deeds

	def set_user
		@user = current_user if current_user
	end

	def after_sign_in_path_for(resource)
		deed_index_path
	end

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
			funding_amount: deed.funding_amount
		}
	end
end
