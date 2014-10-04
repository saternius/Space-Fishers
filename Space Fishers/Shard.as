package {

	import flash.display.*;
	import flash.events.*;
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.text.TextField;
	public class Shard extends MovieClip {
		var xdrift=(Math.random()*14-7);
		var ydrift=(Math.random()*14-7);
		var rotSpeed= Math.random()*16-8;
		public function Shard() {
			this.addEventListener(Event.ENTER_FRAME, RotateCircle);
		}
		function RotateCircle(e:Event) {
			x+=xdrift;
			y+=ydrift;
			rotation+=rotSpeed;
			alpha-=.02;
			
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