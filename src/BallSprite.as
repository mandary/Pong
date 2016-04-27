package 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Yufang Sun
	 */
	public class BallSprite extends FlxSprite
	{
		[Embed(source = "assets/hit.mp3")] private var hitSound:Class;
		[Embed(source = "assets/ball.png")] private var pic:Class;
		private var speed:Number = 100;
		public function BallSprite(X:Number = 156, Y:Number = 116) 
		{
			super(X, Y);
			var rand1:Number = Math.random();
			var rand2:Number = Math.random();
			if (rand1 + 0.5 > 1) {
				this.velocity.x = (Math.random() + 0.5) * 80;
			} else {
				this.velocity.x = -(Math.random() + 0.5) * 80;
			}
			if (rand2 + 0.5 > 1) {
				this.velocity.y = (Math.random() + 0.5) * 60;
			} else {
				this.velocity.y = -(Math.random() + 0.5) * 60;
			}
			
			this.elasticity = 1;
			
			loadGraphic(pic, false, false, 8, 8, false);
			
			
		}
		
		override public function update():void
		{
			super.update();
			if (y > 240 || y < 0) {
				FlxG.play(hitSound);
				velocity.y *= -1;
			}
		}
		
	}

}