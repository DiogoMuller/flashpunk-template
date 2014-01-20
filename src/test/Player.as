package test 
{
	import fplib.base.GameEntity;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.Sfx;
	import net.flashpunk.graphics.Spritemap;
	
	/**
	 * ...
	 * @author Diogo Muller
	 */
	public class Player extends GameEntity
	{
		public var shoot:Sfx = new Sfx(Assets.SE_SHOOT);
		public var playerSprite:Spritemap = new Spritemap(Assets.SPRITE_SWORDGUY, 48, 32);
		
		public function Player()
		{	
			playerSprite.add("stand", [0, 1, 2, 3, 4, 5], 20, true);
			playerSprite.add("run", [6, 7, 8, 9, 10, 11], 20, true);
			
			graphic = playerSprite;
			
			// Here I set the hitbox width/height with the setHitbox function.
			setHitbox(50, 50);
			
			addBehavior(new ControlableBehavior());
		}		
	}

}