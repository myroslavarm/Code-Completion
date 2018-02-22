A completion is started by the ECController. The controller creates me to compute the context of the completion. The most important information about the context are the receiverClass and the completionToken. I create a ECModel or subclass when requested by the 'model' method.

I use SHParser and SHRange to parse the text input.

narrowString holds the current part of the text that should be completed (be it a class, variable or methods). 

For example in the case of a message: 
    selectors are all the selectors that could be used.
    entries are the selectors that match the narrowString.

My method createModel is important since it is the one deciding the kind of model that will be used: 
- none empty when no completion should be done
- untyped when basically we have no clue about the receiver, (structurally xx|)
- typed when the receiver is know (structurally var xx|)







