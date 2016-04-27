package 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Yufang Sun
	 */
	public class MenuState extends FlxState
	{
		[Embed(source = "assets/menu.png")] private var menu:Class;
		[Embed(source = "assets/startup.mp3")] private var startupSound:Class;
		public function MenuState() 
		{
			var background:FlxSprite = new FlxSprite();
			background.loadGraphic(menu);
			add(background);
			
		}
		override public function update():void
		{
			super.update();
			if (FlxG.keys.ENTER) {
				FlxG.play(startupSound);
				FlxG.fade(0xff000000, 1, startPlay);
			}
		}
		
		private function startPlay():void
		{
			FlxG.switchState(new PlayState);
		}
		
	}

}