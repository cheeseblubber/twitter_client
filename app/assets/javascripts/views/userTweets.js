Twitter_client.Views.recentTweetsView = Backbone.View.extend({

  initialize: function (options) {
    this.tweets = options.tweets
    this.username = options.username
  },

  template: JST["tweet/userTweets"],

  render: function () {
    var renderedContent = this.template({
      username: this.username,
      tweets: this.tweets
    });
    this.$el.html(renderedContent);
    return this;
  }

})
