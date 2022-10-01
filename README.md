# user-styles

Styles I use to customize various websites and web apps.

I use this [Tampermonkey®][1] snippet to load the a CSS file from this repo through [jsDelivr][0]:

[0]: https://www.jsdelivr.com/
[1]: https://www.tampermonkey.net/

```js
(function() {
    'use strict';

    var link = document.createElement('link');

    link.rel = 'stylesheet';
    link.href = 'https://cdn.jsdelivr.net/gh/gurdiga/user-styles@main/workflowy.css'

    document.head.appendChild(link);

    console.log('Added user-style', link);
})();
```

**NOTE**: This ☝️ approach will not work on websites with good [Content Security Policy][2]. For some of those cases, inlining the CSS code in the Tampermonkey snippet might work:

[2]: https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP

```js
    const style = document.createElement('style');

    style.textContent = `
.block__bank-offers,
.block__banner-carousel {
    display: none !important;
}
    `;

    document.head.appendChild(style);
```
