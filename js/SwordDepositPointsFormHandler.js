/**
 * @file js/SwordDepositPointsFormHandler.js
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2000-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @package plugins.generic.sword
 * @class SwordDepositPointsFormHandler
 *
 * @brief SWORD plugin deposit points form handler.
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
	$.pkp.plugins.sword.js.SwordDepositPointsFormHandler =
			function($form, options) {

		this.parent($form, options);

		$form.find('select#depositPoint').change(this.callbackWrapper(this.loadDepositPointsDetails));
		$form.find('button#refreshBtn').click(this.callbackWrapper(this.loadDepositPointsDetails));
		$form.find('button#selectAllBtn').click(this.callbackWrapper(this.selectAllSubmissions));
		// fill form if dropdown is set on page load
		if ($('select#depositPoint').val() != "") {
			this.loadDepositPointsDetails();
		}

	};
	$.pkp.classes.Helper.inherits(
			$.pkp.plugins.sword.js.SwordDepositPointsFormHandler,
			$.pkp.controllers.form.AjaxFormHandler);

	/**
	 * Callback to load deposit points details
	 *
	 * @private
	 */
	$.pkp.plugins.sword.js.SwordDepositPointsFormHandler.prototype.
		loadDepositPointsDetails = 
		function() {
			var $select = $('select#depositPoint');
			var selectedDepositPoint = $select.val();
			if (!selectedDepositPoint) return; 		// stop if no deposit point is selected
			$('input[name=swordUsername]').val('');
			$('input[name=swordPassword]').val('');
			$('#swordDepositPoint').find('option').remove();
			$('span#depositPointsSpinner').addClass('is_visible');
			var url = $select.closest('form').data('depositpointurl');
			$.get(url, {'depositPointId':selectedDepositPoint}, function(data) {
				var content = data.content;
				$('input[name=swordUsername]').val(content.username);
				$('input[name=swordPassword]').val(content.password);
				for (dp in content.depositPoints) {
					var value = dp;
					var label = content.depositPoints[dp];
					var opt = $('<option/>').val(value).text(label);
					$("select#swordDepositPoint").append(opt);
					$('span#depositPointsSpinner').removeClass('is_visible');
				}
			}, 'json');
		} 

	/**
	 * Callback to load deposit points details
	 *
	 * @private
	 */
	$.pkp.plugins.sword.js.SwordDepositPointsFormHandler.prototype.
		selectAllSubmissions = 
		function() {
			$('div.pkpListPanel--selectSubmissions input[type=checkbox]').prop('checked',true);
		}

	/** @param {jQuery} $ jQuery closure. */
}(jQuery));