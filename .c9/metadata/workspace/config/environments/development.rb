{"changed":true,"filter":false,"title":"development.rb","tooltip":"/config/environments/development.rb","value":"Rails.application.configure do\n  # Settings specified here will take precedence over those in config/application.rb.\n\n  # In the development environment your application's code is reloaded on\n  # every request. This slows down response time but is perfect for development\n  # since you don't have to restart the web server when you make code changes.\n  config.cache_classes = false\n\n  # Do not eager load code on boot.\n  config.eager_load = false\n\n  # Show full error reports and disable caching.\n  config.consider_all_requests_local       = true\n  config.action_controller.perform_caching = false\n\n  # Don't care if the mailer can't send.\n  config.action_mailer.raise_delivery_errors = false\n\n  # Print deprecation notices to the Rails logger.\n  config.active_support.deprecation = :log\n\n  # Raise an error on page load if there are pending migrations.\n  config.active_record.migration_error = :page_load\n\n  # Debug mode disables concatenation and preprocessing of assets.\n  # This option may cause significant delays in view rendering with a large\n  # number of complex assets.\n  config.assets.debug = true\n\n  # Adds additional error checking when serving assets at runtime.\n  # Checks for improperly declared sprockets dependencies.\n  # Raises helpful error messages.\n  config.assets.raise_runtime_errors = true\n\n  # Raises error for missing translations\n  # config.action_view.raise_on_missing_translations = true\n\n  config.action_mailer.default_url_options = { :host => 'localhost:3000' }\n  \n  \nend\n","undoManager":{"mark":-1,"position":1,"stack":[[{"group":"doc","deltas":[{"start":{"row":37,"column":74},"end":{"row":38,"column":0},"action":"insert","lines":["",""]},{"start":{"row":38,"column":0},"end":{"row":38,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":38,"column":2},"end":{"row":39,"column":0},"action":"insert","lines":["",""]},{"start":{"row":39,"column":0},"end":{"row":39,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":39,"column":2},"end":{"row":40,"column":0},"action":"insert","lines":["require 'carrierwave/orm/activerecord'",""]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":39,"column":2},"end":{"row":39,"column":2},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1419823092094}