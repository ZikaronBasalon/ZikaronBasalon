module ApplicationHelper
	def inline_svg(path)
    file = File.open("app/assets/images/#{path}", "rb")
    raw file.read
  end

  def get_guests_svg(allowed)
  	if allowed
  		"guests_allowed.svg"
  	else
  		"guests_not_allowed.svg"
  	end
  end

  def strangers_class(allowed)
  	if allowed
  		"allowed"
  	else
  		"not_allowed"
  	end
  end

  def date_format(date)
    date.strftime("%d-%m-%Y")
  end

  def profile_label(user)
    current_user.meta.is_a?(Manager) ? t('.manager_profile') : t('.profile')
  end
end
