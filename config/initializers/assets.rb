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

Rails.application.config.assets.precompile += %w( quizzes/top.scss )
Rails.application.config.assets.precompile += %w( quizzes/hint.scss )
Rails.application.config.assets.precompile += %w( quizzes/ans.scss )
Rails.application.config.assets.precompile += %w( glide.core.css )
Rails.application.config.assets.precompile += %w( glide.theme.css )
Rails.application.config.assets.precompile += %w( jquery.bxslider.css )

Rails.application.config.assets.precompile += %w( quizzes/top.js )
Rails.application.config.assets.precompile += %w( quizzes/hint.js )
Rails.application.config.assets.precompile += %w( quizzes/ans.js )
Rails.application.config.assets.precompile += %w( jquery.animations-spotlight.js )
Rails.application.config.assets.precompile += %w( jquery.animations.min.js )
Rails.application.config.assets.precompile += %w( glide.js )
Rails.application.config.assets.precompile += %w( glide.min.js )
Rails.application.config.assets.precompile += %w( jquery.bxslider.min.js )
