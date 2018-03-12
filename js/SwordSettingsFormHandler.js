/**
 * @file js/SwordSettingsFormHandler.js
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2000-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @package plugins.generic.sword
 * @class SwordSettingsFormHandler
 *
 * @brief SWORD plugin settings form handler.
 */
(function($) {
	
	/** @type {Object} */
	$.pkp.plugins.sword =
			$.pkp.plugins.sword ||
			{ js: { } };
			
	/**
	 * @constructor
	 *
	 * @extends $.pkp.controllers.form.AjaxFormHandler
	 *
	 * @param {jQueryObject} $form the wrapped HTML form element.
	 * @param {Object} options form options.
	 */
	$.pkp.plugins.sword.js.SwordSettingsFormHandler =
			function($form, options) {

		this.parent($form, options);

	};
	$.pkp.classes.Helper.inherits(
			$.pkp.plugins.sword.js.SwordSettingsFormHandler,
			$.pkp.controllers.form.AjaxFormHandler);

	/** @param {jQuery} $ jQuery closure. */
}(jQuery));