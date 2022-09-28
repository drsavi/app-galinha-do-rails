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

