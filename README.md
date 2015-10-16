Prebake
=======

[![Join the chat at https://gitter.im/liamja/Prebake](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/liamja/Prebake?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

A set of Adblock filters to block obtrusive EU cookie law notices.

Details
-------

The _Obtrusive_ list blocks cookie notices that either consume a
considerable amount of screen real estate or popup and distract the
viewers attention.

The _Quiet_ list blocks all other notices regardless of their size
or obnoxiousness. Using this list isn't recommended but is provided
for completeness. Simple two- or three-word links to privacy pages
aren't blocked (such as links in a page footer), but a lengthy
paragraph mid-page will be.

Contribute
----------

There are going to be sites that I have missed, or I may have just
screwed up with a CSS selector. In any case, feel free to point out
bugs or request new sites to be added via the [GitHub issue tracker](https://github.com/liamja/Prebake/issues),
or [submit a pull request](https://github.com/liamja/Prebake/compare).
Please make sure to test the site without any other AdBlock rules or
content blockers, using the most recent version of the Prebake ruleset
before reporting bugs.

When adding a new filter, keep the list sorted and
update the `last modified` timestamp to match the current date.
Please also make sure you don't introduce duplicate rules: [Redundancy check for Adblock Plus rules](https://arestwo.org/famlam/redundantRuleChecker.html).

User Agreement
--------------

By using these filters, you are accepting and allowing sites to
set cookies by default. You agree to allow the sites you visit to
set cookies.

Only use these filters if you understand the implications of
allowing cookies.

License
-------

The MIT License (MIT)

Copyright (c) 2015 Liam Anderson, Prebake Contributors

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
