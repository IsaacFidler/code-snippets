# local-storage-size

 <!--
 Description: Logs the size (in KB) of each key in localStorage and the total used space.
 Tags: javascript, browser, localStorage, performance, console
 -->

```js
var _lsTotal = 0,
  _xLen,
  _x;
for (_x in localStorage) {
  if (!localStorage.hasOwnProperty(_x)) {
    continue;
  }
  _xLen = (localStorage[_x].length + _x.length) * 2;
  _lsTotal += _xLen;
  console.log(_x.substr(0, 50) + " = " + (_xLen / 1024).toFixed(2) + " KB");
}
console.log("Total = " + (_lsTotal / 1024).toFixed(2) + " KB");
```
