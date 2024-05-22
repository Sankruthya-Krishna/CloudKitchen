sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/test/rdb/kitchen/test/integration/FirstJourney',
		'com/test/rdb/kitchen/test/integration/pages/KitchenList',
		'com/test/rdb/kitchen/test/integration/pages/KitchenObjectPage'
    ],
    function(JourneyRunner, opaJourney, KitchenList, KitchenObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/test/rdb/kitchen') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheKitchenList: KitchenList,
					onTheKitchenObjectPage: KitchenObjectPage
                }
            },
            opaJourney.run
        );
    }
);