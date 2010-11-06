package com.vmware.appViewer.command
{
	import com.vmware.appViewer.core.IApplicationSearchService;
	import com.vmware.appViewer.event.ApplicationSelectedEvent;

	import org.robotlegs.mvcs.Command;

	public class ApplicationSaleCommand extends Command
	{
		[Inject]
		public var service:IApplicationSearchService;

		[Inject]
		public var event:ApplicationSelectedEvent;

		override public function execute():void
		{
			service.getApplicationSales(event.application);
		}
	}
}