package com.vmware.appViewer.command
{
	import com.vmware.appViewer.core.IApplicationSearchService;
	import com.vmware.appViewer.event.ApplicationSearchEvent;
	
	import org.robotlegs.mvcs.Command;
	
	public class ApplicationSearchCommand extends Command
	{
		[Inject]
		public var service:IApplicationSearchService;
		
		[Inject]
		public var event:ApplicationSearchEvent;
			
		override public function execute():void
		{
			service.getApplications(event.queryApplicationName);
		}
	}
}