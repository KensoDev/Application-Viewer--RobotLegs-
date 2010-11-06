package com.vmware.appViewer.view.mediator
{
	import com.vmware.appViewer.event.ApplicationSearchEvent;
	import com.vmware.appViewer.view.ApplicationSearch;

	import org.robotlegs.mvcs.Mediator;

	public class ApplicationSearchMediator extends Mediator
	{
		[Inject]
		public var view:ApplicationSearch;

		override public function onRegister():void
		{
			eventMap.mapListener(view, ApplicationSearchEvent.SEARCH_APPLICATION, dispatch);
		}
	}
}