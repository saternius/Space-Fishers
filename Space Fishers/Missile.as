package {

	import flash.display.*;
	import flash.events.*;

	public class Missile extends MovieClip {
		public function Missile() {
			
			this.addEventListener(Event.ENTER_FRAME, RotateCircle);

		}
		function RotateCircle(e:Event) {
			var bulletSpeed:Number= new Number(40);
			var randomNum:Number=new Number(0);
			var bulletAngle:Number = new Number(((this.rotation+randomNum-90)*Math.PI/180));
			var xSpeed:Number = new Number(Math.cos(bulletAngle)*bulletSpeed);
			var ySpeed:Number = new Number(Math.sin(bulletAngle)*bulletSpeed);
			this.x += xSpeed;
			this.y += ySpeed;
			
			
			
			
			
			
			
			
			
		}
	}
}