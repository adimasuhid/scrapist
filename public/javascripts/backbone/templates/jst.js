window.JST = {}

JST['index'] = _.template(
        '<div class="scrapist-form pure-g"> \
            <div class="pure-u-1-2"> \
                <form class="pure-form pure-form-stacked"> \
                    <fieldset> \
                        <legend> Scrapist Sample </legend> \
                        <label for="base_url">Base Url</label> \
                        <input id="base_url" type="text" placeholder="Base Url"> \
                        <label for="path">Path</label> \
                        <input id="path" type="text" placeholder="Path - change / to @"> \
                        <label for="selector">CSS Selector</label> \
                        <input id="css" type="text" placeholder="CSS Selector"> \
                        <button type="submit" class="pure-button pure-button-primary submit">Scrape that!</button> \
                    </fieldset> \
                </form> \
            </div> \
        </div>'
        );

JST['main'] = _.template(
    '<div class="pure-g"> \
        <div id="container" class="pure-u-1-2"> \
        </div> \
        <div id="output" class="pure-u-1-2"> \
        </div> \
    <div>'
    );

JST['output'] = _.template(
    '<div class="pure-g cool"> \
        <div class="pure-u-1-2"> \
            <%- model.get("some_data")%>\
        </div> \
    </div>'
    );
