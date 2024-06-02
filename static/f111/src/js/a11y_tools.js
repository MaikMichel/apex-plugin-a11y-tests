const a11yTooling = {
  processViolation: "GET_VIOLATION",
  processPasses: "GET_PASSES"
}

var viewModel = {};

function createTableFromJSON(jsonData) {
  // Tab erzeugen
  const table = document.createElement('table');
  table.classList.add("t-Report-report", "nested-table", "w100p");

  // fun für rows
  function createRows(obj, table) {
    for (let key in obj) {

      if (obj.hasOwnProperty(key) && (Array.isArray(obj[key]) && obj[key].length > 0) || (!Array.isArray(obj[key]) && obj[key] !== null)) {
        const row = table.insertRow();

        if (!Array.isArray(obj)) {
          const keyCell = row.insertCell();
          keyCell.classList.add("t-Report-cell", "u-bold", "u-alignTop", "w10", "cell-key");
          keyCell.textContent = key;
        }

        const valueCell = row.insertCell();
        valueCell.classList.add("t-Report-cell");

        if (typeof obj[key] === 'object' && obj[key] !== null) {
          valueCell.classList.add("padding-none", "cell-inline");

          const nestedTable = createTableFromJSON(obj[key]);
          valueCell.appendChild(nestedTable);

        } else {
          valueCell.classList.add("cell-val");
          valueCell.textContent = obj[key];
        }
      }
    }
  }

  createRows(jsonData, table);
  return table;
}

function showDetails(processName, nodeId, title) {
  const elem = document.querySelector('.ui-dialog:has( .a11y-node-details) > .ui-dialog-titlebar > .ui-dialog-title');
  if (elem) {
    elem.innerHTML = title;
  }

  // Get target
  const tableContainer = document.getElementById('output');

  // Clear target container
  tableContainer.replaceChildren();

  // open drawer
  apex.theme.openRegion("node-details");

  // call ajax process
  const result = apex.server.process(processName, {
      x01: nodeId
  });

  // when returned successfully
  result.done( function( data ) {
    apex.debug.log('>>>> a11yTooling', data);



    // Add table to container
    const table = createTableFromJSON(data);
    tableContainer.appendChild(table);

  } ).fail(function( jqXHR, textStatus, errorThrown ) {
      apex.debug.error('error', jqXHR, textStatus, errorThrown);
  });
}

function hasClass(elemID, className) {
  return (' ' + document.getElementById(elemID).className + ' ').indexOf(' ' + className+ ' ') > -1;
}

function initPage2() {
  apex.jQuery('.apex-rds').data('onRegionChange', function(mode, activeTab) {
    viewModel.hideRegionHeader(hasClass("SHOW_ALL_tab", 'apex-rds-selected') ? "" : "t-Region--hideHeader");
  });


  viewModel = {
    hideRegionHeader: ko.observable(hasClass("SHOW_ALL_tab", 'apex-rds-selected') ? "" : "t-Region--hideHeader")
  }

  // Model durch knockout binden, html als Element, um auch den PageTitle zu erwischen
  ko.applyBindings(viewModel, document.querySelector("html"));
}