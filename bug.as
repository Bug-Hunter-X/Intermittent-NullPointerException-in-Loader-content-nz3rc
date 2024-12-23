function handleComplete(event:Event):void {
  //This function is called when the loaded event is dispatched
  //If the loaded event is dispatched, the loaded event is dispatched by the loader
  //If the event is null or undefined, the loader will throw an error
  if (event == null) {
    throw new Error("Event is null");
  }
  //If the event is not null, the event target is the loader
  //The event target is the loader, not the content
  //The event target is not the content, it is the loader
  var loader:Loader = event.target as Loader;
  //If the event target is not a loader, the code will throw an error
  if (loader == null) {
    throw new Error("Loader is null");
  }
  //The content is the child of the loader
  var content:DisplayObject = loader.content;
  //If the content is null or undefined, the code will throw an error
  if (content == null) {
    throw new Error("Content is null");
  }
  //The content should be added to the stage
  addChild(content);
}

//This is how to use it. The event should not be null
//And the loader should not be null, and the content should not be null
//If any of these are null or undefined, the code will throw an error
var loader:Loader = new Loader();
loader.load(new URLRequest("http://www.adobe.com/images/main.jpg"));
loader.addEventListener(Event.COMPLETE, handleComplete);

//The following is a better way to handle the complete event
//It checks if the loader content is null, and it handles the error better
loader.addEventListener(Event.COMPLETE, function(event:Event):void{
    if(loader.content == null){
        trace("Error: Content is null");
        return;
    }
    addChild(loader.content);
});