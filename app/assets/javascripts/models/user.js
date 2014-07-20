Twitter_client.Models.User = Backbone.Model.extend({

  initialize: function (options) {
    this.username = options.username
  },

  urlRoot: function () {
    return "api/users/" + this.username
  }
});
