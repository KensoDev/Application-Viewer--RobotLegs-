package com.vmware.appViewer.event
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	
	public class ApplicationSalesResultEvent extends Event
	{
		public var applicationSales:ArrayCollection;
		public static const APPLICATION_SALES_RESULT:String = "APPLICATION_SALES_RESULT";
		
		public function ApplicationSalesResultEvent(type:String, applicationSales:ArrayCollection, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			this.applicationSales = applicationSales;
			
			super(type, bubbles, cancelable);
		}
	}
}