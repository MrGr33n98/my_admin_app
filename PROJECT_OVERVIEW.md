# 📚 Visão Geral do Projeto Rails + ActiveAdmin

## Estrutura de diretórios
```
.
├── Dockerfile
├── Gemfile
├── Gemfile.lock
├── PROJECT_OVERVIEW.md
├── README.md
├── Rakefile
├── app
│   ├── admin
│   │   ├── admin_users.rb
│   │   ├── app
│   │   ├── articles.rb
│   │   ├── categories.rb
│   │   ├── companies.rb
│   │   ├── company_categories.rb
│   │   ├── dashboard.rb
│   │   ├── import_csv.html.erb
│   │   ├── impressions.rb
│   │   ├── lead_saas.rb
│   │   ├── leads.rb
│   │   ├── members.rb
│   │   ├── plans.rb
│   │   ├── product_accesses.rb
│   │   ├── products.rb
│   │   ├── reviews.rb
│   │   ├── selo.rb
│   │   ├── services.rb
│   │   ├── sponsored_products.rb
│   │   └── users.rb
│   ├── assets
│   │   ├── config
│   │   ├── files
│   │   ├── images
│   │   ├── javascripts
│   │   └── stylesheets
│   ├── channels
│   │   └── application_cable
│   ├── controllers
│   │   ├── application_controller.rb
│   │   ├── articles_controller.rb
│   │   ├── categories_controller.rb
│   │   ├── companies_controller.rb
│   │   ├── company_categories_controller.rb
│   │   ├── company_images_controller.rb
│   │   ├── concerns
│   │   ├── impressions_controller.rb
│   │   ├── lead_saas_controller.rb
│   │   ├── leads_controller.rb
│   │   ├── members_controller.rb
│   │   ├── plans_controller.rb
│   │   ├── product_accesses_controller.rb
│   │   ├── products_controller.rb
│   │   ├── reviews_controller.rb
│   │   ├── services_controller.rb
│   │   ├── sponsored_products_controller.rb
│   │   └── users_controller.rb
│   ├── helpers
│   │   ├── application_helper.rb
│   │   ├── articles_helper.rb
│   │   ├── categories_helper.rb
│   │   ├── companies_helper.rb
│   │   ├── company_categories_helper.rb
│   │   ├── company_images_helper.rb
│   │   ├── impressions_helper.rb
│   │   ├── lead_saas_helper.rb
│   │   ├── leads_helper.rb
│   │   ├── members_helper.rb
│   │   ├── plans_helper.rb
│   │   ├── product_accesses_helper.rb
│   │   ├── products_helper.rb
│   │   ├── reviews_helper.rb
│   │   ├── services_helper.rb
│   │   ├── sponsored_products_helper.rb
│   │   └── users_helper.rb
│   ├── javascript
│   │   ├── application.js
│   │   └── controllers
│   ├── jobs
│   │   └── application_job.rb
│   ├── mailers
│   │   └── application_mailer.rb
│   ├── models
│   │   ├── admin_user.rb
│   │   ├── application_record.rb
│   │   ├── article.rb
│   │   ├── category.rb
│   │   ├── company.rb
│   │   ├── company_banner.rb
│   │   ├── company_category.rb
│   │   ├── concerns
│   │   ├── impression.rb
│   │   ├── lead.rb
│   │   ├── lead_saa.rb
│   │   ├── member.rb
│   │   ├── plan.rb
│   │   ├── product.rb
│   │   ├── product_access.rb
│   │   ├── review.rb
│   │   ├── selo.rb
│   │   ├── service.rb
│   │   ├── sponsored_product.rb
│   │   └── user.rb
│   └── views
│       ├── admin
│       ├── articles
│       ├── categories
│       ├── companies
│       ├── company_categories
│       ├── company_images
│       ├── import.html.erb
│       ├── impressions
│       ├── layouts
│       ├── lead_saas
│       ├── leads
│       ├── members
│       ├── plans
│       ├── product_accesses
│       ├── reviews
│       ├── services
│       ├── sponsored_products
│       └── users
├── bin
│   ├── bundle
│   ├── docker-entrypoint
│   ├── importmap
│   ├── rails
│   ├── rake
│   └── setup
├── config
│   ├── application.rb
│   ├── boot.rb
│   ├── cable.yml
│   ├── credentials.yml.enc
│   ├── database.yml
│   ├── environment.rb
│   ├── environments
│   │   ├── development.rb
│   │   ├── production.rb
│   │   └── test.rb
│   ├── importmap.rb
│   ├── initializers
│   │   ├── active_admin.rb
│   │   ├── assets.rb
│   │   ├── content_security_policy.rb
│   │   ├── devise.rb
│   │   ├── filter_parameter_logging.rb
│   │   ├── inflections.rb
│   │   └── permissions_policy.rb
│   ├── locales
│   │   ├── devise.en.yml
│   │   └── en.yml
│   ├── master.key
│   ├── puma.rb
│   ├── routes.rb
│   └── storage.yml
├── config.ru
├── db
│   ├── migrate
│   │   ├── 20250502115349_devise_create_admin_users.rb
│   │   ├── 20250502115352_create_active_admin_comments.rb
│   │   ├── 20250502185456_create_companies.rb
│   │   ├── 20250502185504_create_services.rb
│   │   ├── 20250502185508_create_categories.rb
│   │   ├── 20250502185511_create_company_categories.rb
│   │   ├── 20250502185515_create_reviews.rb
│   │   ├── 20250502185518_create_leads.rb
│   │   ├── 20250502185522_create_impressions.rb
│   │   ├── 20250502190925_create_members.rb
│   │   ├── 20250502190934_create_lead_saas.rb
│   │   ├── 20250502190940_create_plans.rb
│   │   ├── 20250502190949_create_sponsored_products.rb
│   │   ├── 20250502190957_create_product_accesses.rb
│   │   ├── 20250502194631_add_fields_to_categories.rb
│   │   ├── 20250502201616_add_status_to_leads.rb
│   │   ├── 20250502201751_add_status_and_porte_empresa_to_leads.rb
│   │   ├── 20250502212229_create_users.rb
│   │   ├── 20250502232245_add_currency_to_plans.rb
│   │   ├── 20250502232856_add_billing_type_to_plans.rb
│   │   ├── 20250502233345_add_payment_method_to_plans.rb
│   │   ├── 20250502233946_add_status_to_plans.rb
│   │   ├── 20250502234635_add_billing_frequency_to_plans.rb
│   │   ├── 20250502235242_create_products.rb
│   │   ├── 20250503000248_add_product_to_plans.rb
│   │   ├── 20250503112937_add_status_to_reviews.rb
│   │   ├── 20250503115036_create_articles.rb
│   │   ├── 20250503123156_add_status_to_products.rb
│   │   ├── 20250503124815_add_plan_category_to_plans.rb
│   │   ├── 20250503130928_create_active_storage_tables.active_storage.rb
│   │   ├── 20250503131225_create_selos.rb
│   │   ├── 20250503134847_add_details_to_products.rb
│   │   ├── 20250504224457_add_parent_id_to_categories.rb
│   │   ├── 20250504233953_add_seo_url_to_companies.rb
│   │   └── 20250505015201_create_company_banners.rb
│   ├── schema.rb
│   └── seeds.rb
├── lib
│   ├── assets
│   └── tasks
├── public
│   ├── 404.html
│   ├── 422.html
│   ├── 500.html
│   ├── apple-touch-icon-precomposed.png
│   ├── apple-touch-icon.png
│   ├── assets
│   │   ├── actioncable-1c7f008c6deb7b55c6878be38700ff6bf56b75444a086fa1f46e3b781365a3ea.js
│   │   ├── actioncable-1c7f008c6deb7b55c6878be38700ff6bf56b75444a086fa1f46e3b781365a3ea.js.gz
│   │   ├── actioncable.esm-06609b0ecaffe2ab952021b9c8df8b6c68f65fc23bee728fc678a2605e1ce132.js
│   │   ├── actioncable.esm-06609b0ecaffe2ab952021b9c8df8b6c68f65fc23bee728fc678a2605e1ce132.js.gz
│   │   ├── actiontext-78de0ebeae470799f9ec25fd0e20ae2d931df88c2ff9315918d1054a2fca2596.js
│   │   ├── actiontext-78de0ebeae470799f9ec25fd0e20ae2d931df88c2ff9315918d1054a2fca2596.js.gz
│   │   ├── actiontext.esm-328ef022563f73c1b9b45ace742bd21330da0f6bd6c1c96d352d52fc8b8857e5.js
│   │   ├── actiontext.esm-328ef022563f73c1b9b45ace742bd21330da0f6bd6c1c96d352d52fc8b8857e5.js.gz
│   │   ├── active_admin-469dd6e5f39556adcfe6ef3deb1db7a640a9e050eb2ca28884934f6c74e89f21.css
│   │   ├── active_admin-469dd6e5f39556adcfe6ef3deb1db7a640a9e050eb2ca28884934f6c74e89f21.css.gz
│   │   ├── active_admin-ab939fcb08b9cb4c1de3936e8dcd97dbadd86334451760ee75c4c22bb001154d.js
│   │   ├── active_admin-ab939fcb08b9cb4c1de3936e8dcd97dbadd86334451760ee75c4c22bb001154d.js.gz
│   │   ├── activestorage-503a4fe23aabfbcb752dad255f01835904e6961d5f20d1de13987a691c27d9cd.js
│   │   ├── activestorage-503a4fe23aabfbcb752dad255f01835904e6961d5f20d1de13987a691c27d9cd.js.gz
│   │   ├── activestorage.esm-b3f7f0a5ef90530b509c5e681c4b3ef5d5046851e5b70d57fdb45e32b039c883.js
│   │   ├── activestorage.esm-b3f7f0a5ef90530b509c5e681c4b3ef5d5046851e5b70d57fdb45e32b039c883.js.gz
│   │   ├── application-37f365cbecf1fa2810a8303f4b6571676fa1f9c56c248528bc14ddb857531b95.js
│   │   ├── application-37f365cbecf1fa2810a8303f4b6571676fa1f9c56c248528bc14ddb857531b95.js.gz
│   │   ├── application-744375082c6bacdcb9df4590609e0e0f3e4a03cac985c28a13029ac1ee7118a4.css
│   │   ├── application-744375082c6bacdcb9df4590609e0e0f3e4a03cac985c28a13029ac1ee7118a4.css.gz
│   │   ├── controllers
│   │   ├── manifest-b84bfa46a33d7f0dc4d2e7b8889486c9a957a5e40713d58f54be71b66954a1ff.js
│   │   ├── manifest-b84bfa46a33d7f0dc4d2e7b8889486c9a957a5e40713d58f54be71b66954a1ff.js.gz
│   │   ├── stimulus-autoloader-c584942b568ba74879da31c7c3d51366737bacaf6fbae659383c0a5653685693.js
│   │   ├── stimulus-autoloader-c584942b568ba74879da31c7c3d51366737bacaf6fbae659383c0a5653685693.js.gz
│   │   ├── stimulus-f75215805563870a61ee9dc5a207ce46d4675c7e667558a54344fd1e7baa697f.js
│   │   ├── stimulus-f75215805563870a61ee9dc5a207ce46d4675c7e667558a54344fd1e7baa697f.js.gz
│   │   ├── stimulus-importmap-autoloader-db2076c783bf2dbee1226e2add52fef290b5d31b5bcd1edd999ac8a6dd31c44a.js
│   │   ├── stimulus-importmap-autoloader-db2076c783bf2dbee1226e2add52fef290b5d31b5bcd1edd999ac8a6dd31c44a.js.gz
│   │   ├── stimulus-loading-3576ce92b149ad5d6959438c6f291e2426c86df3b874c525b30faad51b0d96b3.js
│   │   ├── stimulus-loading-3576ce92b149ad5d6959438c6f291e2426c86df3b874c525b30faad51b0d96b3.js.gz
│   │   ├── stimulus.min-dd364f16ec9504dfb72672295637a1c8838773b01c0b441bd41008124c407894.js
│   │   ├── stimulus.min-dd364f16ec9504dfb72672295637a1c8838773b01c0b441bd41008124c407894.js.gz
│   │   ├── stimulus.min.js-2cc63625fa177963b45da974806e7aee846cbf1d4930815733d0fdf3fb232325.map
│   │   ├── stimulus.min.js-2cc63625fa177963b45da974806e7aee846cbf1d4930815733d0fdf3fb232325.map.gz
│   │   ├── trix-5fc7656c4bff8fe505ff90fda4bc9409db4447ada6efcc1204914dc782c6066c.css
│   │   ├── trix-5fc7656c4bff8fe505ff90fda4bc9409db4447ada6efcc1204914dc782c6066c.css.gz
│   │   ├── trix-b6d103912a6c8078fed14e45716425fb78de5abfbe7b626cd5d9b25b35265066.js
│   │   ├── trix-b6d103912a6c8078fed14e45716425fb78de5abfbe7b626cd5d9b25b35265066.js.gz
│   │   ├── turbo-c1b3ed88d59a5edf70c018abb8555cfb697b2550044dd05c8f2e902bd49c60da.js
│   │   ├── turbo-c1b3ed88d59a5edf70c018abb8555cfb697b2550044dd05c8f2e902bd49c60da.js.gz
│   │   ├── turbo.min-c85b4c5406dd49df1f63e03a5b07120d39cc3e33bc2448f5e926b80514f9dfc8.js
│   │   ├── turbo.min-c85b4c5406dd49df1f63e03a5b07120d39cc3e33bc2448f5e926b80514f9dfc8.js.gz
│   │   ├── turbo.min.js-b37fe2e710d4d836c38c1a68c68eed4e6beb4c80ad938d735f440216fe051c44.map
│   │   └── turbo.min.js-b37fe2e710d4d836c38c1a68c68eed4e6beb4c80ad938d735f440216fe051c44.map.gz
│   ├── favicon.ico
│   └── robots.txt
├── test
│   ├── application_system_test_case.rb
│   ├── channels
│   │   └── application_cable
│   ├── controllers
│   │   ├── articles_controller_test.rb
│   │   ├── categories_controller_test.rb
│   │   ├── companies_controller_test.rb
│   │   ├── company_categories_controller_test.rb
│   │   ├── company_images_controller_test.rb
│   │   ├── impressions_controller_test.rb
│   │   ├── lead_saas_controller_test.rb
│   │   ├── leads_controller_test.rb
│   │   ├── members_controller_test.rb
│   │   ├── plans_controller_test.rb
│   │   ├── product_accesses_controller_test.rb
│   │   ├── products_controller_test.rb
│   │   ├── reviews_controller_test.rb
│   │   ├── services_controller_test.rb
│   │   ├── sponsored_products_controller_test.rb
│   │   └── users_controller_test.rb
│   ├── fixtures
│   │   ├── admin_users.yml
│   │   ├── articles.yml
│   │   ├── categories.yml
│   │   ├── companies.yml
│   │   ├── company_banners.yml
│   │   ├── company_categories.yml
│   │   ├── impressions.yml
│   │   ├── lead_saas.yml
│   │   ├── leads.yml
│   │   ├── members.yml
│   │   ├── plans.yml
│   │   ├── product_accesses.yml
│   │   ├── products.yml
│   │   ├── reviews.yml
│   │   ├── selos.yml
│   │   ├── services.yml
│   │   ├── sponsored_products.yml
│   │   └── users.yml
│   ├── helpers
│   ├── integration
│   ├── mailers
│   ├── models
│   │   ├── admin_user_test.rb
│   │   ├── article_test.rb
│   │   ├── avaliacao_test.rb
│   │   ├── category_test.rb
│   │   ├── company_banner_test.rb
│   │   ├── company_category_test.rb
│   │   ├── company_test.rb
│   │   ├── configuracao_test.rb
│   │   ├── empresa_test.rb
│   │   ├── impression_test.rb
│   │   ├── lead_saa_test.rb
│   │   ├── lead_test.rb
│   │   ├── member_test.rb
│   │   ├── pagina_test.rb
│   │   ├── plan_test.rb
│   │   ├── product_access_test.rb
│   │   ├── product_test.rb
│   │   ├── projeto_test.rb
│   │   ├── review_test.rb
│   │   ├── selo_test.rb
│   │   ├── service_test.rb
│   │   ├── servico_test.rb
│   │   ├── sponsored_product_test.rb
│   │   └── user_test.rb
│   ├── system
│   │   ├── articles_test.rb
│   │   ├── categories_test.rb
│   │   ├── companies_test.rb
│   │   ├── company_categories_test.rb
│   │   ├── company_images_test.rb
│   │   ├── impressions_test.rb
│   │   ├── lead_saas_test.rb
│   │   ├── leads_test.rb
│   │   ├── members_test.rb
│   │   ├── plans_test.rb
│   │   ├── product_accesses_test.rb
│   │   ├── reviews_test.rb
│   │   ├── services_test.rb
│   │   ├── sponsored_products_test.rb
│   │   └── users_test.rb
│   └── test_helper.rb
└── vendor
    └── javascript

64 directories, 275 files
```
