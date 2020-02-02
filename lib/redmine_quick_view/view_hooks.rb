module RedminePushover
  class ViewHooks < Redmine::Hook::ViewListener
    render_on :view_my_account_preferences, partial: 'quick_view_issues/preferences'
  end
end
