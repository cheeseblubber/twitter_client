window.Twitter_client = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var router = new Twitter_client.Routers.Router({
     $rootEl: $('#content')
    });
    Backbone.history.start();
  }
}
$(Twitter_client.initialize);
