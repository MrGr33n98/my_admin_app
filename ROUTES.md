# Rotas da aplicação

```
                                  Prefix Verb       URI Pattern                                                                                       Controller#Action
                                articles GET        /articles(.:format)                                                                               articles#index
                                         POST       /articles(.:format)                                                                               articles#create
                             new_article GET        /articles/new(.:format)                                                                           articles#new
                            edit_article GET        /articles/:id/edit(.:format)                                                                      articles#edit
                                 article GET        /articles/:id(.:format)                                                                           articles#show
                                         PATCH      /articles/:id(.:format)                                                                           articles#update
                                         PUT        /articles/:id(.:format)                                                                           articles#update
                                         DELETE     /articles/:id(.:format)                                                                           articles#destroy
                                   users GET        /users(.:format)                                                                                  users#index
                                         POST       /users(.:format)                                                                                  users#create
                                new_user GET        /users/new(.:format)                                                                              users#new
                               edit_user GET        /users/:id/edit(.:format)                                                                         users#edit
                                    user GET        /users/:id(.:format)                                                                              users#show
                                         PATCH      /users/:id(.:format)                                                                              users#update
                                         PUT        /users/:id(.:format)                                                                              users#update
                                         DELETE     /users/:id(.:format)                                                                              users#destroy
                        product_accesses GET        /product_accesses(.:format)                                                                       product_accesses#index
                                         POST       /product_accesses(.:format)                                                                       product_accesses#create
                      new_product_access GET        /product_accesses/new(.:format)                                                                   product_accesses#new
                     edit_product_access GET        /product_accesses/:id/edit(.:format)                                                              product_accesses#edit
                          product_access GET        /product_accesses/:id(.:format)                                                                   product_accesses#show
                                         PATCH      /product_accesses/:id(.:format)                                                                   product_accesses#update
                                         PUT        /product_accesses/:id(.:format)                                                                   product_accesses#update
                                         DELETE     /product_accesses/:id(.:format)                                                                   product_accesses#destroy
                      sponsored_products GET        /sponsored_products(.:format)                                                                     sponsored_products#index
                                         POST       /sponsored_products(.:format)                                                                     sponsored_products#create
                   new_sponsored_product GET        /sponsored_products/new(.:format)                                                                 sponsored_products#new
                  edit_sponsored_product GET        /sponsored_products/:id/edit(.:format)                                                            sponsored_products#edit
                       sponsored_product GET        /sponsored_products/:id(.:format)                                                                 sponsored_products#show
                                         PATCH      /sponsored_products/:id(.:format)                                                                 sponsored_products#update
                                         PUT        /sponsored_products/:id(.:format)                                                                 sponsored_products#update
                                         DELETE     /sponsored_products/:id(.:format)                                                                 sponsored_products#destroy
                                   plans GET        /plans(.:format)                                                                                  plans#index
                                         POST       /plans(.:format)                                                                                  plans#create
                                new_plan GET        /plans/new(.:format)                                                                              plans#new
                               edit_plan GET        /plans/:id/edit(.:format)                                                                         plans#edit
                                    plan GET        /plans/:id(.:format)                                                                              plans#show
                                         PATCH      /plans/:id(.:format)                                                                              plans#update
                                         PUT        /plans/:id(.:format)                                                                              plans#update
                                         DELETE     /plans/:id(.:format)                                                                              plans#destroy
                               lead_saas GET        /lead_saas(.:format)                                                                              lead_saas#index
                                         POST       /lead_saas(.:format)                                                                              lead_saas#create
                            new_lead_saa GET        /lead_saas/new(.:format)                                                                          lead_saas#new
                           edit_lead_saa GET        /lead_saas/:id/edit(.:format)                                                                     lead_saas#edit
                                lead_saa GET        /lead_saas/:id(.:format)                                                                          lead_saas#show
                                         PATCH      /lead_saas/:id(.:format)                                                                          lead_saas#update
                                         PUT        /lead_saas/:id(.:format)                                                                          lead_saas#update
                                         DELETE     /lead_saas/:id(.:format)                                                                          lead_saas#destroy
                                 members GET        /members(.:format)                                                                                members#index
                                         POST       /members(.:format)                                                                                members#create
                              new_member GET        /members/new(.:format)                                                                            members#new
                             edit_member GET        /members/:id/edit(.:format)                                                                       members#edit
                                  member GET        /members/:id(.:format)                                                                            members#show
                                         PATCH      /members/:id(.:format)                                                                            members#update
                                         PUT        /members/:id(.:format)                                                                            members#update
                                         DELETE     /members/:id(.:format)                                                                            members#destroy
                             impressions GET        /impressions(.:format)                                                                            impressions#index
                                         POST       /impressions(.:format)                                                                            impressions#create
                          new_impression GET        /impressions/new(.:format)                                                                        impressions#new
                         edit_impression GET        /impressions/:id/edit(.:format)                                                                   impressions#edit
                              impression GET        /impressions/:id(.:format)                                                                        impressions#show
                                         PATCH      /impressions/:id(.:format)                                                                        impressions#update
                                         PUT        /impressions/:id(.:format)                                                                        impressions#update
                                         DELETE     /impressions/:id(.:format)                                                                        impressions#destroy
                                   leads GET        /leads(.:format)                                                                                  leads#index
                                         POST       /leads(.:format)                                                                                  leads#create
                                new_lead GET        /leads/new(.:format)                                                                              leads#new
                               edit_lead GET        /leads/:id/edit(.:format)                                                                         leads#edit
                                    lead GET        /leads/:id(.:format)                                                                              leads#show
                                         PATCH      /leads/:id(.:format)                                                                              leads#update
                                         PUT        /leads/:id(.:format)                                                                              leads#update
                                         DELETE     /leads/:id(.:format)                                                                              leads#destroy
                                 reviews GET        /reviews(.:format)                                                                                reviews#index
                                         POST       /reviews(.:format)                                                                                reviews#create
                              new_review GET        /reviews/new(.:format)                                                                            reviews#new
                             edit_review GET        /reviews/:id/edit(.:format)                                                                       reviews#edit
                                  review GET        /reviews/:id(.:format)                                                                            reviews#show
                                         PATCH      /reviews/:id(.:format)                                                                            reviews#update
                                         PUT        /reviews/:id(.:format)                                                                            reviews#update
                                         DELETE     /reviews/:id(.:format)                                                                            reviews#destroy
                      company_categories GET        /company_categories(.:format)                                                                     company_categories#index
                                         POST       /company_categories(.:format)                                                                     company_categories#create
                    new_company_category GET        /company_categories/new(.:format)                                                                 company_categories#new
                   edit_company_category GET        /company_categories/:id/edit(.:format)                                                            company_categories#edit
                        company_category GET        /company_categories/:id(.:format)                                                                 company_categories#show
                                         PATCH      /company_categories/:id(.:format)                                                                 company_categories#update
                                         PUT        /company_categories/:id(.:format)                                                                 company_categories#update
                                         DELETE     /company_categories/:id(.:format)                                                                 company_categories#destroy
                              categories GET        /categories(.:format)                                                                             categories#index
                                         POST       /categories(.:format)                                                                             categories#create
                            new_category GET        /categories/new(.:format)                                                                         categories#new
                           edit_category GET        /categories/:id/edit(.:format)                                                                    categories#edit
                                category GET        /categories/:id(.:format)                                                                         categories#show
                                         PATCH      /categories/:id(.:format)                                                                         categories#update
                                         PUT        /categories/:id(.:format)                                                                         categories#update
                                         DELETE     /categories/:id(.:format)                                                                         categories#destroy
                                services GET        /services(.:format)                                                                               services#index
                                         POST       /services(.:format)                                                                               services#create
                             new_service GET        /services/new(.:format)                                                                           services#new
                            edit_service GET        /services/:id/edit(.:format)                                                                      services#edit
                                 service GET        /services/:id(.:format)                                                                           services#show
                                         PATCH      /services/:id(.:format)                                                                           services#update
                                         PUT        /services/:id(.:format)                                                                           services#update
                                         DELETE     /services/:id(.:format)                                                                           services#destroy
                          company_images GET        /company_images(.:format)                                                                         company_images#index
                                         POST       /company_images(.:format)                                                                         company_images#create
                       new_company_image GET        /company_images/new(.:format)                                                                     company_images#new
                      edit_company_image GET        /company_images/:id/edit(.:format)                                                                company_images#edit
                           company_image GET        /company_images/:id(.:format)                                                                     company_images#show
                                         PATCH      /company_images/:id(.:format)                                                                     company_images#update
                                         PUT        /company_images/:id(.:format)                                                                     company_images#update
                                         DELETE     /company_images/:id(.:format)                                                                     company_images#destroy
                               companies GET        /companies(.:format)                                                                              companies#index
                                         POST       /companies(.:format)                                                                              companies#create
                             new_company GET        /companies/new(.:format)                                                                          companies#new
                            edit_company GET        /companies/:id/edit(.:format)                                                                     companies#edit
                                 company GET        /companies/:id(.:format)                                                                          companies#show
                                         PATCH      /companies/:id(.:format)                                                                          companies#update
                                         PUT        /companies/:id(.:format)                                                                          companies#update
                                         DELETE     /companies/:id(.:format)                                                                          companies#destroy
                  new_admin_user_session GET        /admin/login(.:format)                                                                            active_admin/devise/sessions#new
                      admin_user_session POST       /admin/login(.:format)                                                                            active_admin/devise/sessions#create
              destroy_admin_user_session DELETE|GET /admin/logout(.:format)                                                                           active_admin/devise/sessions#destroy
                 new_admin_user_password GET        /admin/password/new(.:format)                                                                     active_admin/devise/passwords#new
                edit_admin_user_password GET        /admin/password/edit(.:format)                                                                    active_admin/devise/passwords#edit
                     admin_user_password PATCH      /admin/password(.:format)                                                                         active_admin/devise/passwords#update
                                         PUT        /admin/password(.:format)                                                                         active_admin/devise/passwords#update
                                         POST       /admin/password(.:format)                                                                         active_admin/devise/passwords#create
                              admin_root GET        /admin(.:format)                                                                                  admin/dashboard#index
          batch_action_admin_admin_users POST       /admin/admin_users/batch_action(.:format)                                                         admin/admin_users#batch_action
                       admin_admin_users GET        /admin/admin_users(.:format)                                                                      admin/admin_users#index
                                         POST       /admin/admin_users(.:format)                                                                      admin/admin_users#create
                    new_admin_admin_user GET        /admin/admin_users/new(.:format)                                                                  admin/admin_users#new
                   edit_admin_admin_user GET        /admin/admin_users/:id/edit(.:format)                                                             admin/admin_users#edit
                        admin_admin_user GET        /admin/admin_users/:id(.:format)                                                                  admin/admin_users#show
                                         PATCH      /admin/admin_users/:id(.:format)                                                                  admin/admin_users#update
                                         PUT        /admin/admin_users/:id(.:format)                                                                  admin/admin_users#update
                                         DELETE     /admin/admin_users/:id(.:format)                                                                  admin/admin_users#destroy
             batch_action_admin_articles POST       /admin/articles/batch_action(.:format)                                                            admin/articles#batch_action
                          admin_articles GET        /admin/articles(.:format)                                                                         admin/articles#index
                                         POST       /admin/articles(.:format)                                                                         admin/articles#create
                       new_admin_article GET        /admin/articles/new(.:format)                                                                     admin/articles#new
                      edit_admin_article GET        /admin/articles/:id/edit(.:format)                                                                admin/articles#edit
                           admin_article GET        /admin/articles/:id(.:format)                                                                     admin/articles#show
                                         PATCH      /admin/articles/:id(.:format)                                                                     admin/articles#update
                                         PUT        /admin/articles/:id(.:format)                                                                     admin/articles#update
                                         DELETE     /admin/articles/:id(.:format)                                                                     admin/articles#destroy
             upload_csv_admin_categories GET        /admin/categories/upload_csv(.:format)                                                            admin/categories#upload_csv
             import_csv_admin_categories POST       /admin/categories/import_csv(.:format)                                                            admin/categories#import_csv
           batch_action_admin_categories POST       /admin/categories/batch_action(.:format)                                                          admin/categories#batch_action
                        admin_categories GET        /admin/categories(.:format)                                                                       admin/categories#index
                                         POST       /admin/categories(.:format)                                                                       admin/categories#create
                      new_admin_category GET        /admin/categories/new(.:format)                                                                   admin/categories#new
                     edit_admin_category GET        /admin/categories/:id/edit(.:format)                                                              admin/categories#edit
                          admin_category GET        /admin/categories/:id(.:format)                                                                   admin/categories#show
                                         PATCH      /admin/categories/:id(.:format)                                                                   admin/categories#update
                                         PUT        /admin/categories/:id(.:format)                                                                   admin/categories#update
                                         DELETE     /admin/categories/:id(.:format)                                                                   admin/categories#destroy
            batch_action_admin_companies POST       /admin/companies/batch_action(.:format)                                                           admin/companies#batch_action
                         admin_companies GET        /admin/companies(.:format)                                                                        admin/companies#index
                                         POST       /admin/companies(.:format)                                                                        admin/companies#create
                       new_admin_company GET        /admin/companies/new(.:format)                                                                    admin/companies#new
                      edit_admin_company GET        /admin/companies/:id/edit(.:format)                                                               admin/companies#edit
                           admin_company GET        /admin/companies/:id(.:format)                                                                    admin/companies#show
                                         PATCH      /admin/companies/:id(.:format)                                                                    admin/companies#update
                                         PUT        /admin/companies/:id(.:format)                                                                    admin/companies#update
                                         DELETE     /admin/companies/:id(.:format)                                                                    admin/companies#destroy
                         admin_dashboard GET        /admin/dashboard(.:format)                                                                        admin/dashboard#index
          batch_action_admin_impressions POST       /admin/impressions/batch_action(.:format)                                                         admin/impressions#batch_action
                       admin_impressions GET        /admin/impressions(.:format)                                                                      admin/impressions#index
                                         POST       /admin/impressions(.:format)                                                                      admin/impressions#create
                    new_admin_impression GET        /admin/impressions/new(.:format)                                                                  admin/impressions#new
                   edit_admin_impression GET        /admin/impressions/:id/edit(.:format)                                                             admin/impressions#edit
                        admin_impression GET        /admin/impressions/:id(.:format)                                                                  admin/impressions#show
                                         PATCH      /admin/impressions/:id(.:format)                                                                  admin/impressions#update
                                         PUT        /admin/impressions/:id(.:format)                                                                  admin/impressions#update
                                         DELETE     /admin/impressions/:id(.:format)                                                                  admin/impressions#destroy
                batch_action_admin_leads POST       /admin/leads/batch_action(.:format)                                                               admin/leads#batch_action
                             admin_leads GET        /admin/leads(.:format)                                                                            admin/leads#index
                                         POST       /admin/leads(.:format)                                                                            admin/leads#create
                          new_admin_lead GET        /admin/leads/new(.:format)                                                                        admin/leads#new
                         edit_admin_lead GET        /admin/leads/:id/edit(.:format)                                                                   admin/leads#edit
                              admin_lead GET        /admin/leads/:id(.:format)                                                                        admin/leads#show
                                         PATCH      /admin/leads/:id(.:format)                                                                        admin/leads#update
                                         PUT        /admin/leads/:id(.:format)                                                                        admin/leads#update
                                         DELETE     /admin/leads/:id(.:format)                                                                        admin/leads#destroy
              batch_action_admin_members POST       /admin/members/batch_action(.:format)                                                             admin/members#batch_action
                           admin_members GET        /admin/members(.:format)                                                                          admin/members#index
                                         POST       /admin/members(.:format)                                                                          admin/members#create
                        new_admin_member GET        /admin/members/new(.:format)                                                                      admin/members#new
                       edit_admin_member GET        /admin/members/:id/edit(.:format)                                                                 admin/members#edit
                            admin_member GET        /admin/members/:id(.:format)                                                                      admin/members#show
                                         PATCH      /admin/members/:id(.:format)                                                                      admin/members#update
                                         PUT        /admin/members/:id(.:format)                                                                      admin/members#update
                                         DELETE     /admin/members/:id(.:format)                                                                      admin/members#destroy
                batch_action_admin_plans POST       /admin/plans/batch_action(.:format)                                                               admin/plans#batch_action
                             admin_plans GET        /admin/plans(.:format)                                                                            admin/plans#index
                                         POST       /admin/plans(.:format)                                                                            admin/plans#create
                          new_admin_plan GET        /admin/plans/new(.:format)                                                                        admin/plans#new
                         edit_admin_plan GET        /admin/plans/:id/edit(.:format)                                                                   admin/plans#edit
                              admin_plan GET        /admin/plans/:id(.:format)                                                                        admin/plans#show
                                         PATCH      /admin/plans/:id(.:format)                                                                        admin/plans#update
                                         PUT        /admin/plans/:id(.:format)                                                                        admin/plans#update
                                         DELETE     /admin/plans/:id(.:format)                                                                        admin/plans#destroy
     batch_action_admin_product_accesses POST       /admin/product_accesses/batch_action(.:format)                                                    admin/product_accesses#batch_action
                  admin_product_accesses GET        /admin/product_accesses(.:format)                                                                 admin/product_accesses#index
                                         POST       /admin/product_accesses(.:format)                                                                 admin/product_accesses#create
                new_admin_product_access GET        /admin/product_accesses/new(.:format)                                                             admin/product_accesses#new
               edit_admin_product_access GET        /admin/product_accesses/:id/edit(.:format)                                                        admin/product_accesses#edit
                    admin_product_access GET        /admin/product_accesses/:id(.:format)                                                             admin/product_accesses#show
                                         PATCH      /admin/product_accesses/:id(.:format)                                                             admin/product_accesses#update
                                         PUT        /admin/product_accesses/:id(.:format)                                                             admin/product_accesses#update
                                         DELETE     /admin/product_accesses/:id(.:format)                                                             admin/product_accesses#destroy
             batch_action_admin_products POST       /admin/products/batch_action(.:format)                                                            admin/products#batch_action
                          admin_products GET        /admin/products(.:format)                                                                         admin/products#index
                                         POST       /admin/products(.:format)                                                                         admin/products#create
                       new_admin_product GET        /admin/products/new(.:format)                                                                     admin/products#new
                      edit_admin_product GET        /admin/products/:id/edit(.:format)                                                                admin/products#edit
                           admin_product GET        /admin/products/:id(.:format)                                                                     admin/products#show
                                         PATCH      /admin/products/:id(.:format)                                                                     admin/products#update
                                         PUT        /admin/products/:id(.:format)                                                                     admin/products#update
                                         DELETE     /admin/products/:id(.:format)                                                                     admin/products#destroy
              batch_action_admin_reviews POST       /admin/reviews/batch_action(.:format)                                                             admin/reviews#batch_action
                           admin_reviews GET        /admin/reviews(.:format)                                                                          admin/reviews#index
                                         POST       /admin/reviews(.:format)                                                                          admin/reviews#create
                        new_admin_review GET        /admin/reviews/new(.:format)                                                                      admin/reviews#new
                       edit_admin_review GET        /admin/reviews/:id/edit(.:format)                                                                 admin/reviews#edit
                            admin_review GET        /admin/reviews/:id(.:format)                                                                      admin/reviews#show
                                         PATCH      /admin/reviews/:id(.:format)                                                                      admin/reviews#update
                                         PUT        /admin/reviews/:id(.:format)                                                                      admin/reviews#update
                                         DELETE     /admin/reviews/:id(.:format)                                                                      admin/reviews#destroy
                batch_action_admin_selos POST       /admin/selos/batch_action(.:format)                                                               admin/selos#batch_action
                             admin_selos GET        /admin/selos(.:format)                                                                            admin/selos#index
                                         POST       /admin/selos(.:format)                                                                            admin/selos#create
                          new_admin_selo GET        /admin/selos/new(.:format)                                                                        admin/selos#new
                         edit_admin_selo GET        /admin/selos/:id/edit(.:format)                                                                   admin/selos#edit
                              admin_selo GET        /admin/selos/:id(.:format)                                                                        admin/selos#show
                                         PATCH      /admin/selos/:id(.:format)                                                                        admin/selos#update
                                         PUT        /admin/selos/:id(.:format)                                                                        admin/selos#update
                                         DELETE     /admin/selos/:id(.:format)                                                                        admin/selos#destroy
             batch_action_admin_services POST       /admin/services/batch_action(.:format)                                                            admin/services#batch_action
                          admin_services GET        /admin/services(.:format)                                                                         admin/services#index
                                         POST       /admin/services(.:format)                                                                         admin/services#create
                       new_admin_service GET        /admin/services/new(.:format)                                                                     admin/services#new
                      edit_admin_service GET        /admin/services/:id/edit(.:format)                                                                admin/services#edit
                           admin_service GET        /admin/services/:id(.:format)                                                                     admin/services#show
                                         PATCH      /admin/services/:id(.:format)                                                                     admin/services#update
                                         PUT        /admin/services/:id(.:format)                                                                     admin/services#update
                                         DELETE     /admin/services/:id(.:format)                                                                     admin/services#destroy
   batch_action_admin_sponsored_products POST       /admin/sponsored_products/batch_action(.:format)                                                  admin/sponsored_products#batch_action
                admin_sponsored_products GET        /admin/sponsored_products(.:format)                                                               admin/sponsored_products#index
                                         POST       /admin/sponsored_products(.:format)                                                               admin/sponsored_products#create
             new_admin_sponsored_product GET        /admin/sponsored_products/new(.:format)                                                           admin/sponsored_products#new
            edit_admin_sponsored_product GET        /admin/sponsored_products/:id/edit(.:format)                                                      admin/sponsored_products#edit
                 admin_sponsored_product GET        /admin/sponsored_products/:id(.:format)                                                           admin/sponsored_products#show
                                         PATCH      /admin/sponsored_products/:id(.:format)                                                           admin/sponsored_products#update
                                         PUT        /admin/sponsored_products/:id(.:format)                                                           admin/sponsored_products#update
                                         DELETE     /admin/sponsored_products/:id(.:format)                                                           admin/sponsored_products#destroy
                batch_action_admin_users POST       /admin/users/batch_action(.:format)                                                               admin/users#batch_action
                             admin_users GET        /admin/users(.:format)                                                                            admin/users#index
                                         POST       /admin/users(.:format)                                                                            admin/users#create
                          new_admin_user GET        /admin/users/new(.:format)                                                                        admin/users#new
                         edit_admin_user GET        /admin/users/:id/edit(.:format)                                                                   admin/users#edit
                              admin_user GET        /admin/users/:id(.:format)                                                                        admin/users#show
                                         PATCH      /admin/users/:id(.:format)                                                                        admin/users#update
                                         PUT        /admin/users/:id(.:format)                                                                        admin/users#update
                                         DELETE     /admin/users/:id(.:format)                                                                        admin/users#destroy
                          admin_comments GET        /admin/comments(.:format)                                                                         admin/comments#index
                                         POST       /admin/comments(.:format)                                                                         admin/comments#create
                           admin_comment GET        /admin/comments/:id(.:format)                                                                     admin/comments#show
                                         DELETE     /admin/comments/:id(.:format)                                                                     admin/comments#destroy
        turbo_recede_historical_location GET        /recede_historical_location(.:format)                                                             turbo/native/navigation#recede
        turbo_resume_historical_location GET        /resume_historical_location(.:format)                                                             turbo/native/navigation#resume
       turbo_refresh_historical_location GET        /refresh_historical_location(.:format)                                                            turbo/native/navigation#refresh
           rails_postmark_inbound_emails POST       /rails/action_mailbox/postmark/inbound_emails(.:format)                                           action_mailbox/ingresses/postmark/inbound_emails#create
              rails_relay_inbound_emails POST       /rails/action_mailbox/relay/inbound_emails(.:format)                                              action_mailbox/ingresses/relay/inbound_emails#create
           rails_sendgrid_inbound_emails POST       /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                           action_mailbox/ingresses/sendgrid/inbound_emails#create
     rails_mandrill_inbound_health_check GET        /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#health_check
           rails_mandrill_inbound_emails POST       /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#create
            rails_mailgun_inbound_emails POST       /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                                       action_mailbox/ingresses/mailgun/inbound_emails#create
          rails_conductor_inbound_emails GET        /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#index
                                         POST       /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#create
       new_rails_conductor_inbound_email GET        /rails/conductor/action_mailbox/inbound_emails/new(.:format)                                      rails/conductor/action_mailbox/inbound_emails#new
           rails_conductor_inbound_email GET        /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#show
new_rails_conductor_inbound_email_source GET        /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)                              rails/conductor/action_mailbox/inbound_emails/sources#new
   rails_conductor_inbound_email_sources POST       /rails/conductor/action_mailbox/inbound_emails/sources(.:format)                                  rails/conductor/action_mailbox/inbound_emails/sources#create
   rails_conductor_inbound_email_reroute POST       /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                               rails/conductor/action_mailbox/reroutes#create
rails_conductor_inbound_email_incinerate POST       /rails/conductor/action_mailbox/:inbound_email_id/incinerate(.:format)                            rails/conductor/action_mailbox/incinerates#create
                      rails_service_blob GET        /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)                               active_storage/blobs/redirect#show
                rails_service_blob_proxy GET        /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)                                  active_storage/blobs/proxy#show
                                         GET        /rails/active_storage/blobs/:signed_id/*filename(.:format)                                        active_storage/blobs/redirect#show
               rails_blob_representation GET        /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations/redirect#show
         rails_blob_representation_proxy GET        /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)    active_storage/representations/proxy#show
                                         GET        /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)          active_storage/representations/redirect#show
                      rails_disk_service GET        /rails/active_storage/disk/:encoded_key/*filename(.:format)                                       active_storage/disk#show
               update_rails_disk_service PUT        /rails/active_storage/disk/:encoded_token(.:format)                                               active_storage/disk#update
                    rails_direct_uploads POST       /rails/active_storage/direct_uploads(.:format)                                                    active_storage/direct_uploads#create
```
