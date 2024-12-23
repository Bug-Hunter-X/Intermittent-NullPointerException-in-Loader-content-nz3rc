# ActionScript 3 Loader.content NullPointerException Bug

This repository demonstrates an uncommon bug in ActionScript 3 related to the `Loader` class.  Under certain circumstances, accessing the `content` property of a `Loader` object after a successful load operation can result in a `NullPointerException`, even though the load appears to have completed successfully.

The bug is intermittent and difficult to reproduce consistently.  The provided code demonstrates the issue and a solution to mitigate it.

## Reproducing the Bug

The `bug.as` file contains code that is prone to this error.  The exact conditions that trigger it aren't fully understood, but it seems related to timing and possibly resource contention.

## Solution

The `bugSolution.as` file offers a robust solution.  It explicitly checks for `null` before accessing `loader.content`, preventing the `NullPointerException`.

## Additional Notes

This bug highlights the importance of defensive programming in ActionScript 3, especially when dealing with asynchronous operations like loading external resources.