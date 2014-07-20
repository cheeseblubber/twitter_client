Twitter_client.Views.userTweetsView = Backbone.View.extend({
  template: JST["userTweets"],

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
    var user = new Twitter_client.Models.User({
      "username": username
    })
    user.fetch({
      success: function (response) {
        var tweets = response.attributes
        debugger
      },
      error: function () {
        console.log("awww")
      }
    })
  }
})
