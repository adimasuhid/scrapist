Scrapist.routers.router = Backbone.Router.extend({
    initialize: function(){
        console.log("initialized");
    },

    routes: {
        "" : "index",
        "lala" : "wut"
    },

    index: function(){
        window.wat = new Scrapist.views.MainView({el: $("#container")});
        wat.render();
        console.log("here");
    },

    wut: function(){
        console.log("wuuuuuuuuut");
    }

});
