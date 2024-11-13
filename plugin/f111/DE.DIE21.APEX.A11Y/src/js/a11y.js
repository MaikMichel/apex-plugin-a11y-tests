const apxA11y = {
  splitBase64String: function(base64) {
    const chunks = [];
    for (let i = 0; i < base64.length; i += 2000) {
        chunks.push(base64.substring(i, i + 2000));
    }
    return chunks;
    },

  runAudit: function () {
    // plugin attributes
    var daThis = this;

    // we group all output
    console.group("apxA11y");

    // output addional infos
    apex.debug.trace("[apxA11y]: daThis.action",   daThis.action);

    console.log('[apxA11y]: running accessibility audit...');

    // confige axe with this
    let config = {
        preload: false
    };

    // first attribute is expected to be the taglist separated by commas
    if (daThis.action.attribute01) {
        config.runOnly = daThis.action.attribute01.split(",")
    }

    apex.debug.trace("[apxA11y]: axeConfig",   config);

    axe.run( daThis.affectedElements[0],
      config,
      (err, results) => {
        if (err) throw err;

        // display results
        if (results.violations?.length>0) {
          const tableData = results.violations.map((sourceObject) => {
            const targetObj = {}; // Create an empty object for the target array

            targetObj.id           = sourceObject.id;
            targetObj.impact       = sourceObject.impact;
            targetObj.tags         = sourceObject.tags.join(', ');
            targetObj.description  = sourceObject.description;
            targetObj.help         = sourceObject.help;
            targetObj.helpUrl      = sourceObject.helpUrl;
            const elements = document.querySelectorAll(sourceObject.nodes[0].target[0])
            targetObj.firstElement  = elements[0];
            targetObj.firstTarget  = sourceObject.nodes[0].target[0];

            return targetObj; // Return the constructed object
          });

            console.table(tableData, ['id', 'impact', 'description', 'tags', 'help', 'firstTarget']);

            console.info(`[apxA11y]: ${results.violations.length} violations found`);
            console.info(`[apxA11y]: ${results.passes.length} test successfully passed`);

        } else {
            console.info(`[apxA11y]: no violations found. ${results.passes.length} tests successfully passed.`);
        }

        results.apexenv = apex.env;
        results.apexenv.APP_ALIAS = apex.env.APP_FILES.split("/")[1]; //r/a11y_tasks/111/files/static/v73/"

        console.info(`[apxA11y]: Accessibility Results`, results);

        // Submit items to server-side
        const ajaxResult = apex.server.plugin( daThis.action.ajaxIdentifier, {
          p_clob_01: JSON.stringify(results)
        });

        ajaxResult.done( function( data ) {
          // do something here
          if (data.status === "success") {
            console.info(`[apxA11y]: View results at: ${window.location.origin}${data.link}`);
          } else {
            console.error("Something went wrong", data.message);
          }
        } ).fail(function( jqXHR, textStatus, errorThrown ) {
            // handle error
            console.error("[apxA11y].ajaxResult-CallBack Error", jqXHR, textStatus, errorThrown);
        } ).always( function() {
            // code that needs to run for both success and failure cases
        } );


        // close group we opened before
        console.groupEnd();
      }
    );


  }
}