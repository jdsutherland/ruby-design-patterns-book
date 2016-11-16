## Template Method Pattern
> The Template Method pattern is simply a fancy way of saying that if you want to vary an algorithm, one way to do so is to code the invariant part in a base class and to encapsulate the variable parts in methods that are defined by a number of subclasses. The base class can simply leave the methods completely undefined—in that case, the subclasses must supply the methods. Alternatively, the base class can provide a default implementation for the methods that the subclasses can override if they want.

* The Template Method pattern is common and used in other design patterns.
* Use when you want to vary part of an algorithm (similar to Strategy Pattern)
* Drawback is using inheritance; subclasses can get coupled.

> Template Method pattern is to build an abstract base class with a skeletal method. This skeletal method (also called a template method) drives the bit of the processing that needs to vary, but it does so by making calls to abstract methods, which are then supplied by the concrete subclasses.

**Hook Method**: non-abstract methods that can be overridden by the concrete classes.
* Permit the concrete class to override or accept default.

### Approach
* > Start with one variation and simply code as though it was the only problem that you need to solve.
* > Next, you could refactor the method that will become the template method so that it calls other methods for the variable parts of the algorithm, but still just focus on the one case.
* > Finally, you could create a subclass for your first case and move your specific implementation into that subclass. At this point, you are ready to start coding the rest of the variations.

### Guidelines
* Don't overdo it - best when lean.
* Avoid having override a huge number of methods.
* Avoid using many hook methods that won't be overriden.
