# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# monkey patch to set cache control headers
require 'ext/active_storage/disk_controller'
