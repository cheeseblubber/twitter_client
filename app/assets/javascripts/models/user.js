Twitter_client.Models.User = Backbone.Model.extend({

  initialize: function (options) {
    this.username = options.username
  },

  urlRoot: function () {
    return "api/users/" + this.username
  },

  // fetch_tweets: function () {
  //   this.fetch({
  //     success: function (response) {
  //       this.tweets = response.attributes
  //     },
  //     error: function (response) {
  //       console.log(response)
  //     }
  //   })
  //
  // },
  // tweets: function () {
  //   if (!this._tweets) {
  //     this._tweets = new Twitter_client.Collections.Tweets();
  //   }
  //   return this._tweets;
  // }
});
