package com.vmware.appViewer.service
{
	import com.vmware.appViewer.core.IApplicationSearchService;
	import com.vmware.appViewer.event.ApplicationSalesResultEvent;
	import com.vmware.appViewer.event.ApplicationsResultEvent;
	import com.vmware.appViewer.model.ApplicationSale;
	import com.vmware.appViewer.model.VmApplication;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.remoting.RemoteObject;
	
	import org.robotlegs.mvcs.Actor;

	public class ApplicationSearchService extends Actor implements IApplicationSearchService
	{
		public var _appService:RemoteObject;
		private var _vmApplication:VmApplication;
		private var _applicationSale:ApplicationSale;

		public function ApplicationSearchService()
		{
			_appService=new RemoteObject("application-viewer");
			
			_appService.getApplicationSales.addEventListener( ResultEvent.RESULT, getApplicationSales_Result_Handler);
			_appService.getOperation("getApplications").addEventListener( ResultEvent.RESULT, getApplications_Result_Handler);

			_appService.removeEventListener(FaultEvent.FAULT, service_Fault_Handler);
		}

		private function getApplicationSales_Result_Handler(event:ResultEvent):void
		{
			dispatch(new ApplicationSalesResultEvent(ApplicationSalesResultEvent.APPLICATION_SALES_RESULT, event.result as ArrayCollection));	
		}

		private function getApplications_Result_Handler(event:ResultEvent):void
		{
			dispatch(new ApplicationsResultEvent(ApplicationsResultEvent.APPLICATIONS_RECEIVED, event.result as ArrayCollection));
		}


		public function getApplicationSales(application:VmApplication):void
		{
			_appService.getApplicationSales(application);
		}

		/* -- Application Sales */

		/* Application Search */

		public function getApplications(appName:String=""):void
		{
			if (appName == "")
				_appService.getApplications();
			else
				_appService.searchApplications(appName);
		}


		private function service_Fault_Handler(event:FaultEvent):void
		{
			Alert.show("Error occured on the server, results not returned", "Error on server");
		}
	}
}