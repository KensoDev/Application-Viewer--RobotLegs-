package com.vmware.appViewer.core
{
	import com.vmware.appViewer.model.VmApplication;

	public interface IApplicationSearchService
	{
		function getApplications(appName:String = ""):void
		function getApplicationSales(application:VmApplication):void;
	}
}