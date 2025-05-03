ActiveAdmin.setup do |config|
  # == Site Title
  config.site_title = "Solar Compare"

  # Set the link url for the title. For example, to take users to your main site.
  # config.site_title_link = "/"

  # Set an optional image to be displayed for the header instead of a string (overrides :site_title)
  # config.site_title_image = "logo.png"

  # == Load Paths
  # config.load_paths = [File.join(Rails.root, 'app', 'ui')]

  # == Default Namespace
  # config.default_namespace = :admin
  # You can customize the settings for each namespace by using a namespace block.

  # == User Authentication
  config.authentication_method = :authenticate_admin_user!

  # == User Authorization
  # config.authorization_adapter = ActiveAdmin::CanCanAdapter
  # config.pundit_default_policy = "MyDefaultPunditPolicy"
  # config.pundit_policy_namespace = :admin

  # == Current User
  config.current_user_method = :current_admin_user

  # == Logging Out
  config.logout_link_path = :destroy_admin_user_session_path
  # config.logout_link_method = :get

  # == Root
  # config.root_to = 'dashboard#index'

  # == Admin Comments
  # config.comments = false
  # config.comments_registration_name = 'AdminComment'
  # config.comments_order = 'created_at ASC'
  # config.comments_menu = false

  # == Batch Actions
  config.batch_actions = true

  # == Controller Filters
  # config.before_action :do_something_awesome

  # == Attribute Filters
  config.filter_attributes = [:encrypted_password, :password, :password_confirmation]

  # == Localize Date/Time Format
  config.localize_format = :long

  # == Favicon
  # config.favicon = 'favicon.ico'

  # == Meta Tags
  # config.meta_tags = { author: 'My Company' }

  # == Removing Breadcrumbs
  # config.breadcrumb = false

  # == Create Another Checkbox
  # config.create_another = true

  # == Register Stylesheets & Javascripts
  # config.register_stylesheet 'my_stylesheet.css'
  # config.register_javascript 'my_javascript.js'

  # == CSV options
  # config.csv_options = { col_sep: ';' }

  # == Menu System
  # config.namespace :admin do |admin|
  #   admin.build_menu :default do |menu|
  #     menu.add label: "My Great Website", url: "http://www.mygreatwebsite.com", html_options: { target: "_blank" }
  #   end
  # end

  # == Download Links
  # config.namespace :admin do |admin|
  #   admin.download_links = false
  # end

  # == Pagination
  # config.default_per_page = 30
  # config.max_per_page = 10_000

  # == Filters
  # config.filters = true
  # config.include_default_association_filters = true

  # == Head
  # config.head = ''.html_safe

  # == Footer
  # config.footer = 'my custom footer text'

  # == Sorting
  # config.order_clause = MyOrderClause

  # == Webpacker
  # config.use_webpacker = true
end
