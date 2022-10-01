# user-styles

Styles I use to customize websites.

I use this JS snippet with Tampermonkey® extension to load the style through jsDelivr:

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

NOTE: This ☝️ approach will not work on websites with good Content Security Policy. For some of those cases, inlining the CSS code in JS might work:

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
