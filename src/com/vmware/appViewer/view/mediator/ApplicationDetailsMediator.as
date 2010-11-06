package com.vmware.appViewer.view.mediator
{
	import com.vmware.appViewer.event.ApplicationSelectedEvent;
	import com.vmware.appViewer.view.ApplicationDetails;

	import org.robotlegs.mvcs.Mediator;

	public class ApplicationDetailsMediator extends Mediator
	{
		[Inject]
		public var view:ApplicationDetails;

		override public function onRegister():void
		{
			eventMap.mapListener(eventDispatcher, ApplicationSelectedEvent.APPLICATION_SELECTED, dispatcher_ApplicationSelected_Handler);
		}

		private function dispatcher_ApplicationSelected_Handler(event:ApplicationSelectedEvent):void
		{
			view.vmApplication=event.application;
		}
	}
}