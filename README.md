# AppleRepro

## Update 21/10/22: Seems fixed

~Update 02/02/22: Still reproduceable~

To reproduce:

- First verify the app compiles as-is (tested on Xcode Version 12.4 (12D4e))
- Edit the `AppleRepro-Example` scheme's Run build configuration to `Release`
- Try to compile, and receive:

```
Undefined symbols for architecture x86_64:
  "nominal type descriptor for AppleRepro.InternalView", referenced from:
      _symbolic _____y_____y_____GG 7SwiftUI19UIHostingControllerC 10AppleRepro10ParentViewV AD08InternalH0V in ViewController.o
ld: symbol(s) not found for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
```
