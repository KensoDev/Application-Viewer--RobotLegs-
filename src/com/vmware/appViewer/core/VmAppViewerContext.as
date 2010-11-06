package com.vmware.appViewer.core
{
	import com.vmware.appViewer.command.ApplicationSaleCommand;
	import com.vmware.appViewer.command.ApplicationSearchCommand;
	import com.vmware.appViewer.event.ApplicationSearchEvent;
	import com.vmware.appViewer.event.ApplicationSelectedEvent;
	import com.vmware.appViewer.service.ApplicationSearchService;
	import com.vmware.appViewer.view.ApplicationDetails;
	import com.vmware.appViewer.view.ApplicationList;
	import com.vmware.appViewer.view.ApplicationSales;
	import com.vmware.appViewer.view.ApplicationSearch;
	import com.vmware.appViewer.view.mediator.ApplicationDetailsMediator;
	import com.vmware.appViewer.view.mediator.ApplicationListMediator;
	import com.vmware.appViewer.view.mediator.ApplicationSalesMediator;
	import com.vmware.appViewer.view.mediator.ApplicationSearchMediator;

	import flash.display.DisplayObjectContainer;

	import org.robotlegs.mvcs.Context;

	public class VmAppViewerContext extends Context
	{

		public override function startup():void
		{
			injector.mapSingletonOf(IApplicationSearchService, ApplicationSearchService);

			commandMap.mapEvent(ApplicationSearchEvent.SEARCH_APPLICATION, ApplicationSearchCommand);
			commandMap.mapEvent(ApplicationSelectedEvent.APPLICATION_SELECTED, ApplicationSaleCommand);

			mediatorMap.mapView(ApplicationDetails, ApplicationDetailsMediator);
			mediatorMap.mapView(ApplicationSales, ApplicationSalesMediator);
			mediatorMap.mapView(ApplicationList, ApplicationListMediator);
			mediatorMap.mapView(ApplicationSearch, ApplicationSearchMediator);
		}

	}
}