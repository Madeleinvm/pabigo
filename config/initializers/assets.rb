# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile << "users/news.css"
Rails.application.config.assets.precompile += %w( ckeditor/*)

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'fonts')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( admin.js admin.scss )

# Precompilar codigo de request
Rails.application.config.assets.precompile += %w( requests.css )

# Precompilar codigo del request principal
Rails.application.config.assets.precompile += %w( requests-index.css )

# Precompilar codigo del request principal de producto
Rails.application.config.assets.precompile += %w( products.css )


# precompilar codigo del editar
Rails.application.config.assets.precompile += %w( requests-edit.css )
