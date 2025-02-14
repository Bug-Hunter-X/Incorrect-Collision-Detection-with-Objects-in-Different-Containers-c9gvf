function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean
{
  var rect1:Rectangle = obj1.getRect(obj1.parent);
  var rect2:Rectangle = obj2.getRect(obj2.parent);
  return rect1.intersects(rect2);
}

//This function will always return false if the objects have different parents, even if they are visually overlapping.
//The problem is that getRect() returns a rectangle relative to the object's parent.
//If the objects have different parents, their rectangles will be in different coordinate systems,
and the intersects() method will always return false.

//Example usage
var obj1:MovieClip = new MovieClip();
obj1.x = 10; obj1.y = 10;
addChild(obj1);

var obj2:MovieClip = new MovieClip();
obj2.x = 10; obj2.y = 10;
var container:Sprite = new Sprite();
addChild(container);
container.addChild(obj2);

//obj1 and obj2 are visually overlapping, but they will not detect collision because they have different parents
trace(checkCollision(obj1, obj2)); // false
