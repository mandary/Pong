package 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Yufang Sun
	 */
	public class WinState extends FlxState
	{
		[Embed(source = "assets/win.mp3")] private var winSound:Class;

		public function WinState(p1:Number = 0, p2:Number = 0) 
		{
			
			
			
			var winner:String = (p1 > p2) ? "1" : "2";
			var winText:FlxText = new FlxText(0, 30, FlxG.width, "Player " + winner + " Wins!");
			var p1Text:FlxText = new FlxText(50, 100, FlxG.width, "Player 1:");
			var p2Text:FlxText = new FlxText(180, 100, FlxG.width, "Player 2:");
			var p1Score:FlxText = new FlxText(50, 150, FlxG.width, p1.toString());
			var p2Score:FlxText = new FlxText(180, 150, FlxG.width, p2.toString());
			var restartText:FlxText = new FlxText(0, 200, FlxG.width, "Press ENTER to Play Again!");
			
			winText.size = 32;
			p1Text.size = 18;
			p2Text.size = 18;
			p1Score.size = 16;
			p2Score.size = 16;
			restartText.size = 18;
			
			winText.color = 0xffffffff;
			p1Text.color = 0xffffffff;
			p2Text.color = 0xffffffff;
			p1Score.color = 0xffffffff;
			p2Score.color = 0xffffffff;
			restartText.color = 0xffffffff;
		
			winText.alignment = "center";
			restartText.alignment = "center";
			
			add(winText);
			add(p1Text);
			add(p2Text);
			add(p1Score);
			add(p2Score);
			add(restartText);
		}
		
		override public function create():void {
			FlxG.play(winSound);
		}
		override public function update():void {
			super.update();
			
			// restart triggered by ENTER
			if (FlxG.keys.ENTER) {
				FlxG.fade(0xffffffff, 0.5, restart);
			}
		}
		
		// restart the game
		public function restart():void {
			FlxG.switchState(new PlayState);
		}
		
	}

}