/**
 * Global variables
 */
"use strict";

var plugins = {
	selectFilter: $("select")
};

/**
 * Initialize All Scripts
 */
$(function () {

	/**
	 * Select2
	 * @description Enables select2 plugin
	 */
	if (plugins.selectFilter.length) {
		var i;
		for (i = 0; i < plugins.selectFilter.length; i++) {
			var select = $(plugins.selectFilter[i]);

			select.select2({
				placeholder: select.attr("data-placeholder") ? select.attr("data-placeholder") : false,
				minimumResultsForSearch: select.attr("data-minimum-results-search") ? select.attr("data-minimum-results-search") : 10,
				maximumSelectionSize: 3
			});
		}
	}

});
