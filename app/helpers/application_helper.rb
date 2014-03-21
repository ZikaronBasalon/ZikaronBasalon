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
end
