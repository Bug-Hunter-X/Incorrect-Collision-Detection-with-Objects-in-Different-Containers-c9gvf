# ActionScript Collision Detection Bug

This repository demonstrates a common bug in ActionScript 3 collision detection, where using `getRect()` with objects in different display lists leads to inaccurate results. The provided code illustrates the problem and its solution. The bug is in the `checkCollision` function. This function will always return false if the objects have different parents, even if they are visually overlapping. The problem is that `getRect()` returns a rectangle relative to the object's parent. If the objects have different parents, their rectangles will be in different coordinate systems, and the `intersects()` method will always return false. 

## Bug

The `bug.as` file contains the flawed collision detection function. The issue occurs when objects are in different display list containers. Visual overlapping is not correctly detected.

## Solution

The `bugSolution.as` file shows a corrected version of the collision detection function. It accounts for different coordinate systems by converting the rectangle coordinates to a common global coordinate system. This ensures accurate collision detection regardless of an object's location in the display tree.
