class RoleChanger
  def initialize(user_id)
    @user_id = user_id
    @user = reload_user
  end

  def change_role
    current_role_type = @user.meta_type
    new_role_name = current_role_type == "Host" ? "Guest" : "Host"
    previous_exists = !@user.previous_meta_type.nil?
    
    if previous_exists
      previous_phone = @user.meta.phone
      @user.meta_type, @user.previous_meta_type = @user.previous_meta_type, @user.meta_type #swap meta_type values using Parallel Assignment
      @user.previous_meta_id, @user.meta_id = @user.meta_id, @user.previous_meta_id #swap id values using Parallel Assignment
      @user.meta.phone = previous_phone
      @user.meta.save!
    else
      new_role = new_role_name.constantize.create!
      if new_role.has_attribute?(:email) then new_role.email = @user.email end
      if new_role.has_attribute?(:name) then new_role.name = @user.full_name end
      new_role.phone = @user.meta.phone
      new_role.save!
      @user.previous_meta_id = @user.meta_id
      @user.previous_meta_type = @user.meta_type
      @user.meta = new_role
    end
    @user.save!
    add_comment(new_role_name)
    activate_user
  end

  def activate_role
    if @user.meta.has_attribute?(:active)
      @user.meta.active=true;
      @user.meta.save!
    end
  end

  def activate_user
    @user.active_this_year=true
    @user.save!
  end

  def reload_user
    User.find(@user_id)
  end

  private

  def add_comment(new_role_name)
    admin_user_id = User.where(email: "zikaronbasalon@gmail.com").first.id
    comment_guest_to_host = "איזה כיף, #{@user.full_name} התארח/ה ב2016, והשנה הפכ/ה למארח/ת."
    comment_host_to_guest = "#{@user.full_name} אירח/ה ב2016, אבל בחר/ה להתארח השנה."
    if new_role_name == "Guest" then comment = comment_host_to_guest end
    if new_role_name == "Host" then comment = comment_guest_to_host end
    host_instance.comments.create!(user_id: admin_user_id, content: comment) unless host_instance.nil?
  end

  def host_instance
    if @user.meta_type == "Host"
      Host.find(@user.meta_id)
    elsif @user.previous_meta_type == "Host"
      Host.find(@user.previous_meta_id)
    end
    nil
  end
 
end

