# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( js/Chart.min.js )
Rails.application.config.assets.precompile += %w( js/dashboard-page-scripts.js)
Rails.application.config.assets.precompile += %w( js/jquery-migrate.min.js )
Rails.application.config.assets.precompile += %w( js/jquery.js )
Rails.application.config.assets.precompile += %w( js/jquery.mCustomScrollbar.concat.min.js )
Rails.application.config.assets.precompile += %w( js/jquery.min.js )
Rails.application.config.assets.precompile += %w( js/main.js )
Rails.application.config.assets.precompile += %w( js/popper.min.js )
Rails.application.config.assets.precompile += %w( js/sidebar-nav.js )
Rails.application.config.assets.precompile += %w( js/test.js )

Rails.application.config.assets.precompile += %w(css/all.min.css )
Rails.application.config.assets.precompile += %w(css/jquery.mCustomScrollbar.css)
Rails.application.config.assets.precompile += %w( css/theme.css)









