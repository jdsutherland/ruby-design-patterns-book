## Strategy Pattern
> The Strategy pattern is a delegation-based approach to solving the same problem as the Template Method pattern. Instead of teasing out the variable parts of your algo- rithm and pushing them down into subclasses, you simply implement each version of your algorithm as a separate object. You can then vary the algorithm by supplying dif- ferent strategy objects to the context—one strategy for producing HTML and a dif- ferent one for outputting PDF files, for example, or perhaps one strategy for calculating Virginia taxes and a different one for computing Pennsylvania taxes.

Motive: supply the context with an object that knows how to perform some variation on an algorithm

* Similar to Template Pattern but based on composition and delegation rather than inheritance.
> With the Template Method pattern, we make our decision when we pick our concrete subclass. In the Strategy pattern, we make our decision by selecting a strategy class at runtime.
* Also similar to Observer Pattern

**Goal**: get self-contained job out of context object and delegate to strategy

*Context class*: the user of the Strategy

How to get the info `Context` has but `Strategy` needs? Two choices:
1. Pass context args 
  * Pro: keeps context and stategy objects seperated.
  * Con: passing around large data that might not used.
2. Pass context object reference

### Approach
1. Class-based
2. Block-based
  * Good when strategy interface is simple

### Guidelines
* Don't couple the context and strategy too close together.
Remember, the Strategy pattern will do you little good if you couple the con- text and your first strategy so tightly together that you cannot wedge a second or a third strategy into the design.
