package 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Yufang Sun
	 */
	public class Player1Sprite extends FlxSprite
	{
		[Embed(source = 'assets/P1.png')] private var P1:Class; 

		public function Player1Sprite(X:Number = 0, Y:Number = 0)
		{
			super(X, Y);
			this.immovable = true;
			
			loadGraphic(P1, true, true, 8, 32);
		}
		
		override public function update():void
		{
			super.update();
			
			if (FlxG.keys.S && y < 205)
			{
				y += 3;
			} else if (FlxG.keys.W && y > 3) {
				y -= 3;
			}
		}
	}

}