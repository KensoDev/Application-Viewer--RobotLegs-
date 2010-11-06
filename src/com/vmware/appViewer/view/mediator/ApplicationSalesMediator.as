package com.vmware.appViewer.view.mediator
{
	import com.vmware.appViewer.event.ApplicationSalesResultEvent;
	import com.vmware.appViewer.view.ApplicationSales;

	import org.robotlegs.mvcs.Mediator;

	public class ApplicationSalesMediator extends Mediator
	{
		[Inject]
		public var view:ApplicationSales;

		override public function onRegister():void
		{
			eventMap.mapListener(eventDispatcher, ApplicationSalesResultEvent.APPLICATION_SALES_RESULT, dispatcher_ApplicationResult_Handler);
		}

		public function dispatcher_ApplicationResult_Handler(event:ApplicationSalesResultEvent):void
		{
			view.applicationSales=event.applicationSales;
		}
	}
}