module TwtsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_twts_path
    elsif action_name == 'edit'
      twts_path
    end
  end
  
end

