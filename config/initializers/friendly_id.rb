# FriendlyId Global Configuration
#
# Use this to set up shared configuration options for your entire application.
# Any of the configuration options shown here can also be applied to single
# models by passing arguments to the `friendly_id` class method or defining
# methods in your model.
#
# To learn more, check out the guide:
#
# http://norman.github.io/friendly_id/file.Guide.html

FriendlyId.defaults do |config|
  # ## Reserved Words
  #
  # Some words could conflict with Rails's routes when used as slugs, or are
  # undesirable to allow as slugs. Edit this list as needed for your app.
  config.use :reserved

  # Enable the :slugged module globally (generates slugs based on your defined field)
  config.use :slugged

  # Enable the :finders module globally (allows Model.find('slug') to work)
  config.use :finders

  config.reserved_words = %w[
    new edit index session login logout users admin
    stylesheets assets javascripts images
  ]

  # The sequence separator is used when slugs conflict
  # config.sequence_separator = "-"

  # ## Tips and Tricks
  #
  # To control when slugs are generated, you can override `should_generate_new_friendly_id?` in your model.
  # To customize slug normalization for non-Roman languages, add a transliteration module.
end
