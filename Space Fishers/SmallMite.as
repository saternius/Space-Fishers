package {

	import flash.display.*;
	import flash.events.*;
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.text.TextField;
	public class SmallMite extends MovieClip {
		public var xdrift=(Math.random()*10-5)+2;
		public var ydrift=(Math.random()*10-5)+2;
		var rotSpeed= Math.random()*10-5;
		public function SmallMite() {
			this.addEventListener(Event.ENTER_FRAME, RotateCircle);
		}
		function RotateCircle(e:Event) {
			x+=xdrift;
			y+=ydrift;
			rotation+=rotSpeed;

			
			
			if (x>700) {
				x=-180;
			}
			if (x<-230) {
				x=650;
			}
			if (y>700) {
				y=-180;
			}
			if (y<-230) {
				y=650;
			}
		}
	}
}