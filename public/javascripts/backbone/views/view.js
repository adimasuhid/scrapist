Scrapist.views.MainView = Backbone.View.extend({
    initialize: function(options){
            console.log("wat");
            this.el = options.el;
    },

    render: function(){
        console.log("uwwwtwtata");
        formView = new Scrapist.views.FormView();
        $(this.el).html(formView.render().el);
        console.log("tinira ba to?");
    },

});

Scrapist.views.FormView = Backbone.View.extend({
    template: JST['index'],
    initialize: function(){

    },

    el: $(".scrapist-form"),

    render: function(){
        this.el.html(this.template());
        this
    }


});
