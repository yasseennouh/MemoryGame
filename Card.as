﻿package{	import flash.display.MovieClip;	import flash.events.MouseEvent;		public class Card extends MovieClip	{		public var _type:*;				public function Card()		{			this.buttonMode = true;			this.addEventListener(MouseEvent.CLICK, onClick);		}				private function onClick(event:MouseEvent):void		{
			if(this.currentFrame==1)
			{				this.play();
			}		}				public function setType(type:*):void		{			_type = type;			loader_mc.addChild(_type);		}	}}