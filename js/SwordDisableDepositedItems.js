(function($) {
	var depositPointMap;
	$(document).ready(function() {
		depositPointMap = $(document).data('depositedIdMap');
	});

	$(document).on('pkp.plugins.sword.loadDepositPoint', function(e) {
		depositPointId = parseInt(e.depositPointId);
		$.each($('.pkpListPanel--selectSubmissions li.pkpListPanelItem--selectSubmission'), function(i, $li) {
			var submissionId = parseInt($("input", $li).val());
			if (_.has(depositPointMap, submissionId)) {
				if (_.has(depositPointMap[submissionId], depositPointId)) {
					$("input", $li).attr('disabled', true);
				} else {
					$("input", $li).removeAttr('disabled');
				}
			}
		});
	});
}(jQuery));
