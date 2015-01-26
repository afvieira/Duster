# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
#Add the header js manifest files, this files is for including javascripts that
#must appear in the html header
Rails.application.config.assets.precompile += %w(welcome_header.js)
Rails.application.config.assets.precompile += %w(welcome_footer.js)
Rails.application.config.assets.precompile += %w(application_header.js)
Rails.application.config.assets.precompile += %w(user_registration.js)
Rails.application.config.assets.precompile += %w(client_registration.js)
Rails.application.config.assets.precompile += %w(welcome.css)
Rails.application.config.assets.precompile += %w(user_registration.css)
Rails.application.config.assets.precompile += %w(client_registration.css)
Rails.application.config.assets.precompile += %w(registration.css )
Rails.application.config.assets.precompile += %w(registration.js )
Rails.application.config.assets.precompile += %w(schedule.css)
Rails.application.config.assets.precompile += %w(schedule.js)
Rails.application.config.assets.precompile += %w(data_tables.css)
Rails.application.config.assets.precompile += %w(data_tables.js)
Rails.application.config.assets.precompile += %w(flot_include.js)
Rails.application.config.assets.precompile += %w(jobs_pie.js)
Rails.application.config.assets.precompile += %w(search_map.js)
Rails.application.config.assets.precompile += %w(search_map.css)


