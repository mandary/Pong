package 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Yufang Sun
	 */
	[SWF(width = "640", height = "480", backgroundColor = "#000000")] 
	[Frame(factoryClass = "Preloader")]
	public class PongGame extends FlxGame
	{
		
		public function PongGame() 
		{
			super(320, 240, WelcomeState, 2);
			forceDebugger = false;
			
		}
		
	}

}