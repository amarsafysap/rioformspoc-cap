sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"rioforms/manageforms/test/integration/pages/FormList",
	"rioforms/manageforms/test/integration/pages/FormObjectPage"
], function (JourneyRunner, FormList, FormObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('rioforms/manageforms') + '/index.html',
        pages: {
			onTheFormList: FormList,
			onTheFormObjectPage: FormObjectPage
        },
        async: true
    });

    return runner;
});

