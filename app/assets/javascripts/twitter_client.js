window.Twitter_client = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $('#content')
    var router = new Twitter_client.Routers.Router($rootEl);
    Backbone.history.start();
  }
}