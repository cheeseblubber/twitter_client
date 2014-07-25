Twitter_client.Views.mutualFollowsView = Backbone.View.extend({
  template: JST["user/mutualFollows"],

  events: {
    "submit form": "submitUsers"
  },

  render: function () {
    var renderedContent = this.template();
    this.$el.html(renderedContent);
    return this
  },

  submitUsers: function () {
    event.preventDefault();
    var username_one = $("#user_one").val()
    var username_two = $("#user_two").val()
  },
  
})
