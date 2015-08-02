# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )


Rails.application.config.assets.precompile += %w( twitter/bootstrap.js )
Rails.application.config.assets.precompile += %w( turbolinks.js )
Rails.application.config.assets.precompile += %w( jquery.js )

Rails.application.config.assets.precompile += %w( jquery_ujs.js )
Rails.application.config.assets.precompile += %w( stampjs/jquery.min.js )
Rails.application.config.assets.precompile += %w( stampjs/smoothscroll.js )
Rails.application.config.assets.precompile += %w( stampjs/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( stampjs/jquery.nav.js )
Rails.application.config.assets.precompile += %w( stampjs/wow.min.js )
Rails.application.config.assets.precompile += %w( stampjs/nivo-lightbox.min.js )
Rails.application.config.assets.precompile += %w( stampjs/owl.carousel.min.js )
Rails.application.config.assets.precompile += %w( stampjs/jquery.stellar.min.js )
Rails.application.config.assets.precompile += %w( stampjs/jquery.ajaxchimp.min.js )
Rails.application.config.assets.precompile += %w( stampjs/custom-1.02.js )





