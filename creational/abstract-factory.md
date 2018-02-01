# Abstract Factory 

Reference: GOF

<img src="./images/1.png" width="60%">

怎么理解这个图?

1. client 要一个 Widget, 但是这个 Wiget 可能有多种look and feel, 比如 PM theme, Motif theme 等等.

2. client 还需要直接对 Window 和 scrollbar 进行直接操作,因为要相应一些events.

   ​

