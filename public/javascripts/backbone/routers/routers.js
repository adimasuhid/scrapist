Scrapist.routers.router = Backbone.Router.extend({
    initialize: function(){
        console.log("initialized");
    },

    routes: {
        "/" : "index"
    },

    index: function(){
        console.log("wuuuuuuuuut");
    }

});
