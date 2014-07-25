Twitter_client.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl;
  },

  routes: {
    "": "root",
    "mutualFollows": "mutualFollows",
    "tweets": "tweetsForm",
    "tweets/:user": "recentTweets"
  },

  root: function () {
    var rootView = new Twitter_client.Views.rootView();
    this._swapView(rootView);
  },

  tweetsForm: function () {
    var tweetsView = new Twitter_client.Views.userFormView();
    this._swapView(tweetsView);
  },

  recentTweets: function (username) {
    // fetch users
    var user = new Twitter_client.Models.User({
      username: username
    })
    var that = this
    user.fetch({
      success: function (response){
        var tweets = response.attributes
        var recentTweetsView = new Twitter_client.Views.recentTweetsView({
          username: username,
          tweets: tweets,
        })
        that._swapView(recentTweetsView)
      },
      error: function () {
        console.log("It didn't work")
      },
      wait: true
    })
  },

  mutualFollows: function (){
    var mutualFollowsView = new Twitter_client.Views.mutualFollowsView();
    this._swapView(mutualFollowsView);
  },

  _swapView: function (view) {
    if (this._currentView) {
      this._currentView.remove();
    }
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }
})
