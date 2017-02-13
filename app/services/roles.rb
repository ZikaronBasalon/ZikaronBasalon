class Role
  def initialize(user_id)
    @user_id = user_id
    @user = reload_user
  end

  def change_role
    begin
      current_role_type = @user.meta_type
      new_role_name = current_role_type == "Host" ? "Guest" : "Host"

      previous_exists = !@user.previous_meta_type.nil?
      
      if previous_exists
        @user.meta_type,user.previous_meta_type = @user.previous_meta_type, @user.meta_type #swap meta_type values using Parallel Assignment
        @user.previous_meta_id,user.meta_id = @user.meta_id, @user.previous_meta_id #swap id values using Parallel Assignment
      else
        new_role = new_role_name.constantize.create!
        new_role.phone = @user.phone
        if new_role.has_attribute?(:email) then new_role.email = @user.email
        if new_role.has_attribute?(:name) then new_role.name = @user.full_name
        new_role.save!
        @user.meta = new_role
      end
      @user.save!
      add_comment(new_role_name)
      reload_user
    rescue
      false
    end
  end

  def activate_role
    if @user.meta.active.present?
      @user.meta.active=true;
      @user.meta.save!
    end
  end

  def activate_user
    @user.active_this_year=true
    @user.save!
  end

  private

  def add_comment(new_role_name)
    admin_user_id = User.where(email: "zikaronbasalon@gmail.com").first.id
    comment_guest_to_host = "איזה כיף, #{@user.full_name} התארח/ה ב2016, והשנה הפכ/ה למארח/ת."
    comment_host_to_guest = "#{@user.full_name} אירח/ה ב2016, אבל בחר/ה להתארח השנה."
    if new_role_name == "Guest" then comment = comment_host_to_guest
    if new_role_name == "Host" then comment = comment_guest_to_host
    host_instance.comments.create!(user_id: admin_user_id, content: comment)
  end

  def host_instance
    role1 = @user.meta_type.constantize.find(@user.meta_id)
    role2 = @user.previous_meta_type.constantize.find(@user.previous_meta_id)
    host(role1, role2)
  end
 
  def host(role1, role2)
    is_a_host(role1) ? role1 : role2
  end

  def is_a_host(role)
    role.has_attribute?(:active) ? true : false
  end

  def reload_user
    User.find(@user_id)
  end
 
end

