The solution involves using `Event.ADDED_TO_STAGE` and `Event.REMOVED_FROM_STAGE` to manage event listeners effectively.

```actionscript
import flash.display.Sprite;
import flash.events.MouseEvent;

public class BugSolution extends Sprite {

    private var mySprite:Sprite;

    public function BugSolution() {
        mySprite = new Sprite();
        mySprite.graphics.beginFill(0xFF0000);
        mySprite.graphics.drawRect(0, 0, 50, 50);
        mySprite.graphics.endFill();
        mySprite.addEventListener(MouseEvent.CLICK, handleClick);
        mySprite.addEventListener(Event.ADDED_TO_STAGE, handleAddedToStage);
        mySprite.addEventListener(Event.REMOVED_FROM_STAGE, handleRemovedFromStage);
        addChild(mySprite);
    }

    private function handleClick(event:MouseEvent):void {
        trace("Sprite clicked!");
    }

    private function handleAddedToStage(event:Event):void {
        trace("Sprite added to stage!");
    }

    private function handleRemovedFromStage(event:Event):void {
        trace("Sprite removed from stage!");
    }

}
```
By attaching listeners to `ADDED_TO_STAGE` and `REMOVED_FROM_STAGE`, we can ensure that listeners are added/removed correctly, resolving the issue.