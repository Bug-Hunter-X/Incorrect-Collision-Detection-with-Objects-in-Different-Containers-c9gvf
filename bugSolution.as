function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean
{
  var globalRect1:Rectangle = obj1.localToGlobal(new Point(0, 0)).x + obj1.getRect(obj1.parent).x;
  var globalRect2:Rectangle = obj2.localToGlobal(new Point(0, 0)).x + obj2.getRect(obj2.parent).x;

  var rect1:Rectangle = obj1.getRect(obj1.parent);
  var rect2:Rectangle = obj2.getRect(obj2.parent);

  var globalPoint1:Point = obj1.localToGlobal(new Point(rect1.x, rect1.y));
  var globalPoint2:Point = obj2.localToGlobal(new Point(rect2.x, rect2.y));

  rect1.x = globalPoint1.x;
  rect1.y = globalPoint1.y;
  rect2.x = globalPoint2.x;
  rect2.y = globalPoint2.y;

  return rect1.intersects(rect2);
}

//Example usage
var obj1:MovieClip = new MovieClip();
obj1.x = 10; obj1.y = 10;
addChild(obj1);

var obj2:MovieClip = new MovieClip();
obj2.x = 10; obj2.y = 10;
var container:Sprite = new Sprite();
addChild(container);
container.addChild(obj2);

//Now obj1 and obj2 will detect collision correctly
trace(checkCollision(obj1, obj2)); // true
