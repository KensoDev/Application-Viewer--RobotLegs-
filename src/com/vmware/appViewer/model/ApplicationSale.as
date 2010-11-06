package com.vmware.appViewer.model
{
	import org.robotlegs.mvcs.Actor;

	[Bindable]
	[RemoteClass(alias="com.vmware.appViewer.ApplicationSale")]
	public class ApplicationSale extends Actor
	{
		public var applicationId:int;
		public var saleMonth:int;
		public var saleAmount:Number;
	}
}