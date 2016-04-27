package 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Yufang Sun
	 */
	public class PlayState extends FlxState
	{
		private var background:FlxSprite;
		private var player1:Player1Sprite;
		private var player2:Player2Sprite;
		private var ball:BallSprite;
		private var p1Score:Number;
		private var p2Score:Number;
		private var p1Text:FlxText;
		private var p2Text:FlxText;
		static private var MAX_SCORE:Number = 5;
		
		
		[Embed(source = "assets/hit.mp3")] private var hitSound:Class;
		[Embed(source = "assets/point.mp3")] private var pointSound:Class;
		public function PlayState() 
		{
			
			// Background
			background = new FlxSprite();
			background.makeGraphic(320, 240);
			add(background);
			// Players
			player1 = new Player1Sprite(16, 104);
			add(player1);
			player2 = new Player2Sprite(296, 104);
			add(player2);
			// Ball
			ball = new BallSprite();
			add(ball);
			p1Score = 0;
			p2Score = 0;
			// player one score text
			p1Text = new FlxText(0, 0, FlxG.width, "0");
			p1Text.size = 12;
			p1Text.color = 0xff000000;
			add(p1Text);
			// player two score text
			p2Text = new FlxText(0, 0, FlxG.width, "0");
			p2Text.size = 12;
			p2Text.color = 0xff000000;
			p2Text.alignment = "right";
			add(p2Text);
			
		}
		
		override public function update():void 
		{
			super.update();
			FlxG.collide(player1, ball, hit);
			FlxG.collide(player2, ball, hit);
			
			// Score
			if (ball.x <= 0) {
				FlxG.play(pointSound);
				p2Text.text = String(++p2Score);
				ball.kill();
				ball = new BallSprite();
				add(ball);
			}
			
			if (ball.x >= 320) {
				FlxG.play(pointSound);
				p1Text.text = String(++p1Score);
				ball.kill();
				ball = new BallSprite();
				add(ball);
			}
			
			// game over
			if (p1Score == MAX_SCORE || p2Score == MAX_SCORE) {
				
				FlxG.switchState(new WinState(p1Score, p2Score));
			}
		}
		
		// collision
		private function hit(player:FlxSprite, ball:FlxSprite):void {
			FlxG.play(hitSound);
			ball.velocity.x *= 1.1;
			ball.velocity.y *= 1.1;
		}
	}
}