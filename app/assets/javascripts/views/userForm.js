Twitter_client.Views.userFormView = Backbone.View.extend({
  template: JST["user/userForm"],

  events: {
    'submit form': 'recentTweets'
  },

  render: function () {
    var renderedContent = this.template()
    this.$el.html(renderedContent);
    return this;
  },

  recentTweets: function () {
    event.preventDefault();
    var username = $(event.target).serializeJSON().user.name
    Backbone.history.navigate('#/tweets/' + username)
  },
})
