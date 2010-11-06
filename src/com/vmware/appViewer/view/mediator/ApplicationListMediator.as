package com.vmware.appViewer.view.mediator
{
	import com.vmware.appViewer.event.ApplicationSearchEvent;
	import com.vmware.appViewer.event.ApplicationSelectedEvent;
	import com.vmware.appViewer.event.ApplicationsResultEvent;
	import com.vmware.appViewer.view.ApplicationList;

	import org.robotlegs.mvcs.Mediator;

	public class ApplicationListMediator extends Mediator
	{
		[Inject]
		public var view:ApplicationList;

		override public function onRegister():void
		{
			eventMap.mapListener(eventDispatcher, ApplicationsResultEvent.APPLICATIONS_RECEIVED, dispatcher_ApplicationsReceived_Handler);
			eventMap.mapListener(view, ApplicationSelectedEvent.APPLICATION_SELECTED, dispatch);
		}

		private function dispatcher_ApplicationsReceived_Handler(event:ApplicationsResultEvent):void
		{
			view.applications=event.applications;
		}
	}
}