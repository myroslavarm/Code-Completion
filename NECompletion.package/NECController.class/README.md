I live as an instance variable in a Browser, Debugger, Workspace or other window. I'm the glue between all participants of the completion system. I create the NECContext and pass myself to the NECMenuMorph. I process the keyboard events and pass them to the NECMenuMorph or close the morph if needed.

My method codeCompletionAround: aBlock textMorph: aTextMorph keyStroke: evt
is the starting point of the completion process.

I'm invoked before and after a keystroke. Check method handleKeystrokeBefore: evt editor: editor and handleKeystrokeAfter: evt editor: editor.

The completion occurs in specific character position. The editor is responsible for determining such positions: look at senders of ==atCompletionPosition==