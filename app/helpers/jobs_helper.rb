module JobsHelper
  def human_boolean(boolean)
    boolean ? 'Yes' : 'No'
  end

  def owner?(object)
    current_user == object.user
  end


end
