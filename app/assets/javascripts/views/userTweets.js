Twitter_client.Views.recentTweetsView = Backbone.View.extend({

  initialize: function (options) {
    this.tweets = options.tweets
  },

  template: JST["tweet/userTweets"],

  render: function () {
    var renderedContent = this.template({
      tweets: this.tweets
      // user: this.user
    });
    this.$el.html(renderedContent);
    return this;
  }

})
