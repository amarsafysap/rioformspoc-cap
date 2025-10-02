sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"rioforms/viewcompletedforms/test/integration/pages/FormRecordList",
	"rioforms/viewcompletedforms/test/integration/pages/FormRecordObjectPage"
], function (JourneyRunner, FormRecordList, FormRecordObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('rioforms/viewcompletedforms') + '/index.html',
        pages: {
			onTheFormRecordList: FormRecordList,
			onTheFormRecordObjectPage: FormRecordObjectPage
        },
        async: true
    });

    return runner;
});

