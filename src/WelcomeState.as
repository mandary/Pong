package 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Yufang Sun
	 */
	public class WelcomeState extends FlxState
	{
		
		public function WelcomeState() 
		{
			var gameText:FlxText = new FlxText(0, 50, FlxG.width, "Pong!");
			var menuText:FlxText = new FlxText(0, 150, FlxG.width, "Press ENTER to see menu!");
			var authorText:FlxText = new FlxText(0, 220, FlxG.width, "Yufang Sun");

			gameText.size = 32;
			menuText.size = 18;
			authorText.size = 14;
			

			gameText.color = 0xffffffff;
			menuText.color = 0xffffffff;
			authorText.color = 0xffffffff;
			
			gameText.alignment = "center";
			menuText.alignment = "center";
			authorText.alignment = "right";

			add(gameText);
			add(menuText);
			add(authorText);
		}
		
		override public function update():void 
		{
			super.update();
			if (FlxG.keys.ENTER) {
				FlxG.fade(0xff000000, 1, control);
			}
		}
		
		private function control():void
		{
			FlxG.switchState(new MenuState);
		}
		
	}

}