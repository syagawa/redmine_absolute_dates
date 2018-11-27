require 'redmine'

Rails.configuration.to_prepare do
  require_dependency 'application_helper'
  ApplicationHelper.send(:include, AbsoluteDateHelperPatch)
end

Rails.application.config.i18n.load_path += Dir["#{File.dirname(__FILE__)}/config/locales/*.{rb,yml}"]

Redmine::Plugin.register :redmine_absolute_datetime do
  name 'Redmine Absolute Dates & Time plugin'
  author 'syagawa'
  description 'Display absolute create or update dates & times'
  version '0.0.4'
  url 'https://github.com/syagawa/redmine_absolute_datetime'
end
