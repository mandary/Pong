package 
{
import org.flixel.*;
	/**
	 * ...
	 * @author Yufang Sun
	 */
	public class Player2Sprite extends FlxSprite
	{
		[Embed(source = 'assets/P2.png')] private var P2:Class; 

		public function Player2Sprite(X:Number = 0, Y:Number = 0)
		{
			super(X, Y);
			this.immovable = true;
			
			loadGraphic(P2, true, true, 8, 32);
		}
		
		override public function update():void
		{
			super.update();
			
			if (FlxG.keys.DOWN && y < 205)
			{
				y += 3;
			} else if (FlxG.keys.UP && y > 3) {
				y -= 3;
			}
		}
	}

}