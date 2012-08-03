//= require ember
//= require ember/app
//= require ./store
//= require_tree ./models
//= require_tree ./controllers
//= require_tree ./views
//= require_tree ./helpers
//= require_tree ./templates
//= require_tree ./routes
//= require_self

var router = Tobedos2.router = Tobedos2.Router.create({
  location: 'hash'
});

Tobedos2.initialize(router);

