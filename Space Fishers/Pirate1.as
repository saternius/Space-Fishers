package {

	import flash.display.*;
	import flash.events.*;
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.text.TextField;
	public class Pirate1 extends MovieClip {
		var changeTime:Number= Math.random()*60+20;
		var rotSpeed:Number=Math.random()*8-4;
		public function Pirate1() {
			this.addEventListener(Event.ENTER_FRAME, RotateCircle);
		}
		function RotateCircle(e:Event) {
			changeTime--;
			if(changeTime<0){
				changeTime=Math.random()*60+20;
				rotSpeed=Math.random()*8-4;
			}
			if (this.x>630) {
				this.x=-30;
			}
			if (this.x<-30) {
				this.x=630;
			}
			if (this.y>630) {
				this.y=-30;
			}
			if (this.y<-30) {
				this.y=630;
			}
			this.rotation+=rotSpeed;
			var angle2:Number = ((this.rotation-90)*Math.PI/180);
			var shpeed:Number= 7;
			var xSpeed2:Number = (Math.cos(angle2)*shpeed);
			var ySpeed2:Number = (Math.sin(angle2)*shpeed);
			this.x+=xSpeed2;
			this.y+=ySpeed2;
		}
	}
}