### Aim
* Recreating code for reproducing Mathematical Tables at the back of Lawden's elliptical function book.
### Status
* Currently, code could be used to reproduce nearly all the tables (including Table L which does not have explicit code for reproduction).
* BC is used to gain arbitrary precision capability on nearly all platforms, as BC is available nearly on all Unix.
* Not meant to be fast. Those need performance should check <code>fredrik-johansson/mpmath</code>.
* Accuracy and speed of the functions inside the code varies, but given a good enough (high enough) scale value and time, it could reproduce the numbers.
### To-Do
* Split the single file into a batch of files.
* More rigorous check against cancellation error or precision loss due to divisions.
* Coding style and comments
### History
* Before git repository created in the morning of 29May2022, this piece of work starts from the theta functions which are defined in Chapter 1 on 12Oct2021.
* Originally for implementing some of the mathematics in preparation for other works, bringing me to study elliptic function + integral from scratch.
* Later agree (with myself) to reproduce all Mathematical Tables at the end of the book first, making sure I could get the numbers whenever I need.
* Sometimes numbers are checked against Mathematica on a Raspberry Pi (always thanks Wolfram for making that available).
### Files

| File | Uses |
| ---- | ---- |
|<code>README.md</code> |This markdown README file. |
|<code>Lawden.bc</code> |The single file which contains all stuff. To be split so that the reproduction could be somehow automated. |

### Functions
* Currently Undocumented
