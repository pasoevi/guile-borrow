# Introduction

*guile-borrow* is a Guile library that borrows syntax and features
from other Lisps. On the one hand it is a collection such features
which are typically implemented using Macros and on the other hand it
is a library that facilitates adding more features - which primarily
means introducing more sophisticated macros systems from other Lisp
dialects.

Not all language features can be simply added to the the language in
forms of syntax macros. For that reason more complicated borrowed
features will be implemented in forms of *Guile* extensions.
