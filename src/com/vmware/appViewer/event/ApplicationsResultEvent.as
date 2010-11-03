package com.vmware.appViewer.event
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	
	public class ApplicationsResultEvent extends Event
	{
		public static var APPLICATIONS_RECEIVED:String = "applicationsReceivedFromServer";
		
		public var applications:ArrayCollection;
		
		public function ApplicationsResultEvent(type:String, applications:ArrayCollection, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			this.applications = applications;
			
			super(type, bubbles, cancelable);
		}
	}
}