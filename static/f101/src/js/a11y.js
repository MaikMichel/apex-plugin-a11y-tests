const apxA11y = {
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
            console.table(results.violations);

            console.warn(`[apxA11y]: ${results.violations.length} violations found`);
        } else {
            console.log('[apxA11y]: no violations found');
        }

        // close group we opened before
        console.groupEnd();
      }
    );


  }
}