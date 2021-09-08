import _Symbol from "@babel/runtime-corejs2/core-js/symbol";
import _Symbol$iterator from "@babel/runtime-corejs2/core-js/symbol/iterator";
import _Array$isArray from "@babel/runtime-corejs2/core-js/array/is-array";
import unsupportedIterableToArray from "./unsupportedIterableToArray.js";
export default function _createForOfIteratorHelperLoose(o, allowArrayLike) {
  var it = typeof _Symbol !== "undefined" && o[_Symbol$iterator] || o["@@iterator"];
  if (it) return (it = it.call(o)).next.bind(it);

  if (_Array$isArray(o) || (it = unsupportedIterableToArray(o)) || allowArrayLike && o && typeof o.length === "number") {
    if (it) o = it;
    var i = 0;
    return function () {
      if (i >= o.length) return {
        done: true
      };
      return {
        done: false,
        value: o[i++]
      };
    };
  }

  throw new TypeError("Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.");
}