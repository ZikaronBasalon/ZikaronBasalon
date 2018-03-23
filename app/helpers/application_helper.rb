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

  def next_locale(locale)
    locale == :he ? 'en' : 'he'
  end

  def filter_by_has_manager(query_obj, has_manager)
    if has_manager.present?
      if has_manager == "true"
        query_obj = query_obj.where('cities.community_leaderships_count > 0')
      else
        query_obj = query_obj.where('cities.community_leaderships_count = 0')
      end
    end
    query_obj
  end

  def filter_by_language(query_obj, field_name, language)
    if language.present?
      if language != "other"
        query_obj = query_obj.where(field_name + "='" + language + "'")
      else
        query_obj = query_obj.where(field_name + " NOT IN ('english', 'hebrew', 'arabic', 'french', 'russian', 'spanish')")
      end
    end
    query_obj
  end

  def get_like_string_for_simple_query(query)
    like_string = "users.full_name LIKE '%" + query + "%'"
    like_string += " OR "
    like_string += "users.email LIKE '%" + query + "%'"
    like_string
  end

  def filter_by_query_simple(query_obj, query)
    if query.present?
      like_string = get_like_string_for_simple_query(query)
      query_obj = query_obj.where(like_string)
    end
    query_obj
  end

  def filter_by_query(query_obj, query)
    if query.present?
      like_string = get_like_string_for_simple_query(query)
      like_string += " OR "
      like_string += "cities.name LIKE '%" + query + "%'"
      query_obj = query_obj.where(like_string)
    end
    query_obj
  end

  def current_user_json
    if current_user && current_user.guest?
      return current_user.to_json(:include => { meta: { :include => :invites } })
    end

    current_user ? current_user.to_json(:include => :meta) : current_user.to_json
  end
end
