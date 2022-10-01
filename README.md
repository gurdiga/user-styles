# user-styles

Styles I use to customize various websites and web apps.

I use this [Tampermonkey®][1] snippet to load the corresponding CSS file from this repo through [jsDelivr][0]:

[0]: https://www.jsdelivr.com/
[1]: https://www.tampermonkey.net/

```js
// ==UserScript==
// @name         Victoriabank user-style
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  None
// @author       You
// @match        https://web.vb24.md/wb/
// @icon         https://www.google.com/s2/favicons?sz=64&domain=vb24.md
// @grant        GM_addElement
// ==/UserScript==

(function() {
    'use strict';

    GM_addElement('link', {
        href: 'https://cdn.jsdelivr.net/gh/gurdiga/user-styles@main/workflowy.css',
        rel: 'stylesheet'
    });
})();
```
