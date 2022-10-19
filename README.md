# README
Metodologia Galinha:
G - Gratidão
A - Atividade Física
L - Laser
I - Inspiração
N - Novidade
H - Humildade 
A - Alteridade

C:\Users\debora_savi\Workspace\rails-ini
cd .. 
cd ..

vagrant up
vagrant ssh

rails new appgalinha

rails generate scaffold Activity description metric periodicity:integer activity_type:integer method:integer

rails db:migrate

rails s -b 0.0.0.0

//http://localhost:3000/activities works!
//para criar o scaffold é sempre no singular e letra maiúscula
//http://localhost:3000/groups.json

rails g scaffold Group description icon color

rails g migration AddGroupToActivities group:references

//model Group to Activity 

rails db:migrate

rails -T db //

rails db:drop

rails g scaffold ActivityRecord activity:references record_date:DateTime quantity:decimal

//pluck: traz a lista, map: permite "editar" os objetos

rails g controller dashboard index

yarn add materialize-css@next
yarn add react-materialize

Para adicionar o materialize na pipeline do projeto:
no caminho: app/assets/javascript/application.js
adicionar: //= require materialize-css/dist/js/materialize
no caminho: app/assets/stylesheets/application.css
adicionar: *= require materialize-css/dist/css/materialize

yarn add jquery

no caminho: app/assets/javascript/application.js
adicionar: //= require jquery





Instalando o devise

No arquivo Gemfile, adicionar:
gem 'devise'

instalar: bundle install

para instalar as dependências: rails generate devise:install

1 - Em config/environments/development.rb adicionar a seguinte configuração:

config.action_mailer.default_url_options = {host: 'localhost', port: 3000}

2 - Ensure you have defined root_url to *something* in your config/routes.rb. Por exemplo: root to: "home#index"


3 - Ensure you have flash messages in app/views/layouts/application.html.erb.
    For example:

    <p class="notice"><%= notice %></p>
    <p class="alert"><%= alert %></p>

    * Not required for API-only Applications *


4 - You can copy Devise views (for customization) to your app by running:

    rails g devise:views

     * Not required *

em config/initializers/devise.rb, descomentar e setar: config.scoped_views = true

rails g devise User
rails g devise Admin

rails generate devise:views users
rails generate devise:views admins

rails db:migrate


Gerando backoffice

rails g controller users_backoffice/welcome index
rails g controller users_backoffice

Alterar os controller do welcome para herdar do users_backoffice e não mais de application
Adicionar o layout ao novo controller

rails g controller admins_backoffice/welcome index
rails g controller admins_backoffice

Alterar os controller do welcome para herdar do admins_backoffice e não mais de application
Adicionar o layout ao novo controller

Fazendo o Logoff apenas de 1 escopo por vez

config.sign_out_all_scopes = false

app/models/admin.rb configurações do devise