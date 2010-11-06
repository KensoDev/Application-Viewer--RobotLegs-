package com.vmware.appViewer.model
{
	import org.robotlegs.mvcs.Actor;

	[Bindable]
	[RemoteClass(alias="com.vmware.appViewer.VmApplication")]
	public class VmApplication extends Actor
	{
		public var applicationId:int;
		public var creatorName:String;
		public var description:String;
		public var mainNamespace:String;
		public var name:String;
		public var numberOfFiles:int;
		public var size:int;
	}
}