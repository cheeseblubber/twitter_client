Twitter_client.Views.mutualFollowsView = Backbone.View.extend({
  template: JST["mutualFollows"],

  render: function () {
    var renderedContent = this.template();
    this.$el.html(renderedContent);
    return this
  }
})
