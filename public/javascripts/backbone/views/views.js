Scrapist.views.MainView = Backbone.View.extend({
    template: JST['main'],
    initialize: function(options){
            this.el = options.el;
            this.model = new Scrapist.models.ScrapeModel();
    },

    render: function(){
        formView = new Scrapist.views.FormView({model: this.model});
        outputView = new Scrapist.views.OutputView({model: this.model});
        $(this.el).html(this.template());
        this.$("#container").html(formView.render().el);
        this.$("#output").html(outputView.render().el);
    },

});

Scrapist.views.FormView = Backbone.View.extend({
    events: {
        "click .submit" : "scrape"
    },

    template: JST['index'],
    initialize: function(options){
        this.model = options.model;
    },

    className: "scrapist-form",

    render: function(){
        this.$el.html(this.template());
        return this;
    },

    scrape: function(e){
        e.preventDefault();
        base_url = this.$("#base_url").val();
        path = this.$("#path").val();
        css = this.$("#css").val();
        this.model.url = "/scrape/"+base_url+"/"+path+"/"+css

        _that = this;
        this.model.fetch({
            success: function(){
                        console.log(_that.model);
            }
        });
    },
});

Scrapist.views.OutputView = Backbone.View.extend({
    className: "cool",
    template: JST['output'],
    initialize: function(options){
        _that = this;
        this.model = options.model;
        _.bindAll(this, "render");
        this.model.bind("change", this.render);
    },

    render: function(){
        console.log("wut");
        this.$el.html(this.template({model: this.model}));
        return this;
    },

});
