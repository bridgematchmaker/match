/**
 * Global variables
 */
"use strict";

var pluginsTime = {
	bootstrapDateTimePicker: $("[data-time-picker]"),
};


/**
 * Initialize All Scripts
 */
$(function () {

	/**
	 * Bootstrap Date time picker
	 */
	if (pluginsTime.bootstrapDateTimePicker.length) {
		var i;
		for (i = 0; i < pluginsTime.bootstrapDateTimePicker.length; i++) {
			var $dateTimePicker = $(pluginsTime.bootstrapDateTimePicker[i]);
			var options = {};

			options['format'] = 'dddd DD MMMM YYYY - HH:mm';
			if ($dateTimePicker.attr("data-time-picker") === "date") {
				options['format'] = 'YYYY-MM-DD';
				options['minDate'] = new Date();
			} else if ($dateTimePicker.attr("data-time-picker") === "time") {
				options['format'] = 'HH:mm';
			}

			options["time"] = ($dateTimePicker.attr("data-time-picker") !== "date");
			options["date"] = ($dateTimePicker.attr("data-time-picker") !== "time");
			options["shortTime"] = true;

			$dateTimePicker.bootstrapMaterialDatePicker(options);
		}
	}

});
