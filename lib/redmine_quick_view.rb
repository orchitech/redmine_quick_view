require_dependency 'redmine_quick_view/patches/user_preference_patch'

module RedmineQuickView
  class << self

    def setup
      Patches::UserPreferencePatch.apply
    end

  end

end
