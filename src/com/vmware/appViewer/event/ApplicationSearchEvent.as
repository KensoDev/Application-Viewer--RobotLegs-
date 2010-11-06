package com.vmware.appViewer.event
{
	import flash.events.Event;

	public class ApplicationSearchEvent extends Event
	{
		public static const SEARCH_APPLICATION:String="searchApplication";

		public var queryApplicationName:String;

		public function ApplicationSearchEvent(type:String, appName:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);

			this.queryApplicationName=appName;
		}

		override public function clone():Event
		{
			return new ApplicationSearchEvent(type, queryApplicationName, bubbles, cancelable);
		}
	}
}