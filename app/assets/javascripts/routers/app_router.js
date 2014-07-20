Twitter_client.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl;
  },

  routes: {
    "": "root",
    "tweets": "tweets",
    "mutualFollows": "mutualFollows"
  },

  root: function () {
    var rootView = new Twitter_client.Views.rootView();
    this._swapView(rootView);
  },

  tweets: function () {
    var tweetsView = new Twitter_client.Views.userTweetsView();
    this._swapView(tweetsView);
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
