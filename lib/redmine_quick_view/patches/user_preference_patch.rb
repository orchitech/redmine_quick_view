module RedmineQuickView
  module Patches
    module UserPreferencePatch

      def self.apply
        unless UserPreference < self
          UserPreference.prepend self
          UserPreference.class_eval do
            safe_attributes 'quick_view_disable_tooltip'
          end
        end
      end

      def quick_view_disable_tooltip
        self[:quick_view_disable_tooltip] == true || self[:quick_view_disable_tooltip] == '1'
      end

      def quick_view_disable_tooltip=(value)
        self[:quick_view_disable_tooltip] = value
      end

    end
  end
end
