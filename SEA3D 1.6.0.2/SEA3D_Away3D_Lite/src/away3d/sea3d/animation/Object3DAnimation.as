package away3d.sea3d.animation
{
	import away3d.containers.ObjectContainer3D;
	
	import flash.geom.Matrix3D;
	import flash.geom.Vector3D;
	
	import sunag.animation.Animation;
	import sunag.animation.AnimationSet;
	import sunag.sunag;
	
	use namespace sunag;
	
	public class Object3DAnimation extends Animation
	{
		private static const RECOMPOSE:Matrix3D = new Matrix3D();
		private static const TRANSFORM:Matrix3D = new Matrix3D();
		
		protected var _object3d:ObjectContainer3D;
		
		protected var _temp:Vector3D;
		protected var _comps:Vector.<Vector3D>;
		protected var _transform:Matrix3D;
		
		public function Object3DAnimation(object3d:ObjectContainer3D, animationSet:AnimationSet=null, intrplFuncs:Object=null)
		{
			_object3d = object3d;
			super(animationSet, intrplFuncs);						
		}
		
		protected function updateRelativeTransform():void
		{
			RECOMPOSE.recompose( _comps );
			
			TRANSFORM.copyFrom( _transform );
			TRANSFORM.prepend( RECOMPOSE );
			
			_object3d.transform = TRANSFORM;			
		}
		
		public function get object3d():ObjectContainer3D
		{
			return _object3d;
		}
		
		override public function stop():void
		{
			super.stop();
			
			if (_transform)
			{
				_object3d.transform = _transform;
			}
		}
		
		override public function set relative(value:Boolean):void
		{			
			if (_relative == value) return;
			
			if ( (super.relative = value) )
			{
				_transform = _object3d.transform.clone();
				
				_comps = new Vector.<Vector3D>(3);				
				
				_comps[0] = new Vector3D();
				_comps[1] = new Vector3D();
				_comps[2] = new Vector3D(1,1,1);
			}
			else
			{					
				_transform = null;
				_temp = null; _comps = null;
			}
			
			if (_currentAnimation)
				update( _absoluteTime );
		}
	}
}