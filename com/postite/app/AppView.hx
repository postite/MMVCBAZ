package com.postite.::currentApp::.app;

import com.postite.::currentApp::.view.BasicView;

import flash.display.Sprite;
import com.postite.::currentApp::.view.*;
class AppView  extends Sprite implements mmvc.api.IViewContainer
{
	public function new()
	{
		super();
		
	}
	public var viewAdded:Dynamic -> Void;
	public var viewRemoved:Dynamic -> Void;

	/**
	Required by IViewContainer
	*/


	public function isAdded(view:Dynamic):Bool
	{

		return true;
	}

	/**
	Called by ApplicationViewMediator once application is wired up to the context
	@see ApplicationViewMediator.onRegister;
	*/
	public function createViews()
	{
		trace( "createViews");
		var basic = new BasicView();
		addChild(basic);
		viewAdded(basic);
	}



}