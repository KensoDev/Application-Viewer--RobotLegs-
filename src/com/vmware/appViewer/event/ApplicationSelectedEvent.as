package com.vmware.appViewer.event
{
	import com.vmware.appViewer.model.VmApplication;
	
	import flash.events.Event;
	
	public class ApplicationSelectedEvent extends Event
	{
		public static const APPLICATION_SELECTED:String = "VmApplicationSelected";
		
		public var application:VmApplication;
		
		public function ApplicationSelectedEvent(type:String, application:VmApplication, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			this.application = application;
			
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new ApplicationSelectedEvent(type, application, bubbles, cancelable);
		}
	}
}