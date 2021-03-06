# Change Log

### 2.2.0 (27 October 2016)
- New method to stop observing notifications in `NotificationServer`: 

`stopObserver(_ observer: NSObject, name: NSNotification.Name? = nil, object: AnyObject? = nil)` 

This allows you stop observing a notification without storing the `Action` returned when an observation starts.

- New method to remove actions for a given gesture recognizer in `UIControl`: 

`removeActions(for events: UIControlEvents)` 

This allows you cancel an action without storing the `Action` returned when it is added.

- Deprecated `UIControl` `remove(action:, forControlEvents)` in favor of `remove(_:for:)`.


### 2.1.1 (20 October 2016)
- Support for Carthage.

### 2.1.0 (11 October 2016)
- Add `throttle` extension for `UIControl`.

### 2.0.1 (15 September 2016)
- Replace `(Void)` with `()` in closures definition.

### 2.0.0 (11 September 2016)
- **Swift 3** support.

### 1.3.0 (10 July 2016)
- `addObserver(to:object:action:)` has been deprecated in favor of `observe(name:object:action:)`.
- `NSNotificationCenter` observations can be stopped by calling `stopObserving(action)`. 
- New `NSNotificationCenter` method (`add(observer:name:object:action:`) to add actions binded to the lifetime of a given object. 

### 1.2.0 (6 July 2016)
- Add support to `NSNotificationCenter`.

### 1.1.0 (4 July 2016)
- Add support to `NSTimer`.

### 1.0.0 (1 July 2016)
- Initial version with support to `UIView`, `UIControl`, `UIGestureRecognizer` and `UIBarButtonItem`.