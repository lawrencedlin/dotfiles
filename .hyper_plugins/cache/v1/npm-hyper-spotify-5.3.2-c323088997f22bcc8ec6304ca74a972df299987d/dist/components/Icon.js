"use strict";

var _interopRequireDefault = require("@babel/runtime-corejs2/helpers/interopRequireDefault");

var _Object$defineProperty2 = require("@babel/runtime-corejs2/core-js/object/define-property");

_Object$defineProperty2(exports, "__esModule", {
  value: true
});

exports.default = void 0;

var _defineProperty2 = _interopRequireDefault(require("@babel/runtime-corejs2/core-js/object/define-property"));

var _defineProperties = _interopRequireDefault(require("@babel/runtime-corejs2/core-js/object/define-properties"));

var _getOwnPropertyDescriptors = _interopRequireDefault(require("@babel/runtime-corejs2/core-js/object/get-own-property-descriptors"));

var _getOwnPropertyDescriptor = _interopRequireDefault(require("@babel/runtime-corejs2/core-js/object/get-own-property-descriptor"));

var _getOwnPropertySymbols = _interopRequireDefault(require("@babel/runtime-corejs2/core-js/object/get-own-property-symbols"));

var _keys = _interopRequireDefault(require("@babel/runtime-corejs2/core-js/object/keys"));

var _defineProperty3 = _interopRequireDefault(require("@babel/runtime-corejs2/helpers/defineProperty"));

var _lodash = require("lodash");

function ownKeys(object, enumerableOnly) { var keys = (0, _keys.default)(object); if (_getOwnPropertySymbols.default) { var symbols = (0, _getOwnPropertySymbols.default)(object); if (enumerableOnly) symbols = symbols.filter(function (sym) { return (0, _getOwnPropertyDescriptor.default)(object, sym).enumerable; }); keys.push.apply(keys, symbols); } return keys; }

function _objectSpread(target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i] != null ? arguments[i] : {}; if (i % 2) { ownKeys(Object(source), true).forEach(function (key) { (0, _defineProperty3.default)(target, key, source[key]); }); } else if (_getOwnPropertyDescriptors.default) { (0, _defineProperties.default)(target, (0, _getOwnPropertyDescriptors.default)(source)); } else { ownKeys(Object(source)).forEach(function (key) { (0, _defineProperty2.default)(target, key, (0, _getOwnPropertyDescriptor.default)(source, key)); }); } } return target; }

const IconFactory = React => function Icon({
  iconName,
  onClick,
  style
}) {
  const className = `hyper-spotify-icon hyper-spotify-icon-${iconName} hoverable`;
  const iconStyle = iconName ? styles[(0, _lodash.capitalize)(iconName) + 'IconStyle'] : styles.SpotifyIconStyle;
  return /*#__PURE__*/React.createElement("div", {
    onClick: onClick,
    className: className,
    style: _objectSpread(_objectSpread(_objectSpread({}, styles.IconStyle), style), iconStyle)
  });
};

const styles = {
  IconStyle: {
    webkitMaskSize: 'contain',
    webkitMaskRepeat: 'no-repeat',
    webkitMaskPosition: 'center',
    opacity: '0.5'
  },
  SpotifyIconStyle: {
    webkitMaskImage: 'url(data:image/png;base64,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)'
  },
  PlayIconStyle: {
    webkitMaskImage: 'url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAQAAABIkb+zAAAFAklEQVR4Ae3Zy09UdxjG8a9MYpgZBkzkIokxYgcrutG4M7Fx06qhXkPU0KD1H/BCQMVr4lajO6Oi0jY1WoJbF3jbGFKaLjWhLSIGr8ELF2mslXm76Mrfy2TOOe85A4v5POs3Oa885zfnHAlRQUFBQUHBPOo5RAf36GOYD0wyyQeG6eMuVzhEPVXMSCU0cIkBxEP6aWcrSWaIIurp4m/EZyboZD1FTKtSWniCGDJIMymmRZKjvEPs4Q1tJMizJp4hIWaIRvJmEXeQCNLNQvJgN+NIRBmliUjF+clDGTppYzPLqSZOjBhxqlnBFg7TydOc85coJiLz+B3Jmgz32UuaXGrZTw+SPfxKJRFYnP3A5B2nSONHLacZRbJkgC8I2TJeIlPmLW2kCKKUo4wgU+Y5dYRocZbLn+Qcc7Eo5wKZLCukCUl1lvL8xSrCsJpHWYpUiR3xLLfuzyQJS4rriA69FGP245TVaSZsB6as0mWMdiMq/9BAFLbzEVHZicEixvXl8y1R2ahXYIwaArujy0MDUdqhi0Q3ATUhKs1E7SCi0kgASZ7pk4d8+EU/X5HAtyP63CdJPpTqd2sO4FMpb1X7V+HFDySw+krdCa8pwZcWxMk5vBEeshSrdsTJPnyIqYeHt8zFG0GY4HtsKtSz6mOK8KwecdKGV/J/zFU6gThZi2dd6nk/5XcBc5XK1N/gGh6VqM9Up8D3AvYqnXGu4j0JPGlQL4vpAAvYq7QEcbIJTy45Y/fBsIClSr3IZzmPF+pnZK9hAUuV9GH+Bx7MQ5ykDQvYqrQUcVLh/wgdAsMC1iq9QD7LOnI65Ix0WhcwVEkf6K3k1KF+wgwLmKt0zJluJ6d7zshmwwLWKukj/TY59Tkjyw0L2Ku0Ui2f07AzUm1YwF6l+c7UK3L64IzEDQvYq5RQf7ucJp2RmGEBe5VizsSnmbbALsMC016hBx4qlFQrz5ibuCOam1gfoyvwx14d4zF61xnZEvoCDww/ZLfI6YozchhfbNVRjjvTF6f7YW4X/txAPkuL/8fpp/hiq47y0v+XiSrESS0+WKqjLAvyQgP9ztB+fLBUR2nVr5RBPuv14IOlOspvwT5vblWfVWrxzFIdRx3iZAOeJJlwBk/jmaU6jrPOVYwTx6NOZ3SUUjwKWh1ljvr/uat4th5xchSPglZHOYk4+QbPihh0hkcoxxt7dQCqGFP/bz8LH5oRJxfwxFAd54HGyR58SfFGnUWr8cBcHYA1iJNhkvjUhjh5RIp8KFMFFlrwLcEQ4uQ6+dCFOHlCnAAaEZUDRO0IorKNgLoRJxm2E6XvyCBObhLYQkYRJx/ZSFQ28y/iZIQFGDQh6BV2RPSvry9faMToMqKS4WAE3c8gKhcwK6YXQec6KcJSRheCTg+zwa6SAQSdR6wmDGsYRNDpp5yQpHmOoJOhnQosquhApswzaghRXZYVhFFOUEYQczjJGDJlnrKEkKV5jGRd4gxf4kcdZ7NevNBPDRGocm9nJ720sJRcltHqvOu66aGciBRzBcmRF3RxjAZWMp8EMWIkmc9KGjjODV7mnD/PbCK1kzEkoozQSB7U0I1EkJssIG8aGUJCzCDbyLMEB3mN2MMwLcSZFiXs4zFiyAB7SDKtiljLNd4jPjPOVb5mFjNEgk2c50/EQ/o4xwbizEiVrKOVdm7zkFdM8IlPTPCKh9ziIi2spYLQFBQUFBQU/Ae7c7wdBabN6gAAAABJRU5ErkJggg==)'
  },
  PauseIconStyle: {
    webkitMaskImage: 'url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAQAAABIkb+zAAAEq0lEQVR4Ae2bzU8VVxjGf3ITw72XCyblMyFG7KUV2WjYmdC4adFQFc2NGhpM+g/4QS5fgpq41eiOoCCkTY2U4NYFfm0MkaZbEtoCYvgQgiKCNBTB6f68dzozlzMz0MzvXZLnvOcZ3nnPmZlzCdBIQEBAQEAh1TTTw3NGmGeVDTZYZZ4RntFNM9UUsCXJIkEX4xg2YpROThFli5BBNf38jeEwVujjKBn4SjZJXmNsIiaoJ4YvRGnjPYaGeEcLETymjmkMjTFJLZ6xl6cYLsQAe/CAH1nGcCk+UIerhPnZRjH00UINBygiTIgQYYo4yEku08eUpb6LTFyikN8xT/yZF1wgjhWlXGLwPy28JB8X+ArzhvmeG8RxQik3+WA63jhfoplyZk2SLdBCjHTIpo1Fk1FnKNN69U2mv0E7X7AZcrnDZxMLcTRRZFI8f3EIHVQyZlJI+WggbHLr/kIUXcToTZljSEdH+ill6dSjm8aUpXRv88uWHPQfErjBGdaQ2c6xCfayjJz+97jFcaSFJUpIm6fI4kngJmeRhTRAmtRhiKjHbZqQWWtJgyjTyM7jBb8i91cRHNOK7PtRvCAb+Wzd6HyQBVH9h/CKb8Sd8JYsHJEU16AdL+kU+S/igJDYPCxY7XlEQid/l+SJveorMrBNtUjXAp4agGtCUYVt+sV+P+a5gRzxP3iATbLEa6ob4LkBuKUoPhLBFgnxsBj3xcA+oTmBLboU2QvwxQAMKZoO7CCWkQs+GZDN/A9sUChSxX0zsF+o8py30EnwzQC8UVRHsKRZkfT5aEA29AYs6RFLmJ8GriiqTix5rkhqfDQgW/oTLBlRJAd8NVChqIaxZF6RFPlqoFhRzWHJqiIJ+2ogIr6sWbKhSEK+GggpqvXtb2CblVBUlND//iYWbfTgdmujzxTJyS21kD3Gkm5FctlXA1cV1d3ttpl7qKiSzrfTU74amHX+ZqJApCr1zUB5Og80MKqILvlmoCGdR0r5Wm/QNwO/pfd685R4rVLqi4EyoTmGLaKsKMKbvhi4rSiWCWOTPnGKJNtzA7vE97n72OaoSNfmuYHrQvEdtslgQhEvkuupgQKWxHf7HTigXiS8g5d0i/zncUSMd6IXVeIVh8X054nikBYxyBgxvCCHCZE7iWMiTIphevGCfpH3NWHSoBZDRCNu0yqzcpo0GZAn4ziDm/wgjxrwiLTZI8+1scZx3KKGTyLfIrsBdJ6XWOOsS1f/k4ZzEoJ7KY9YNqGbVlE8mlafTIYwZNBLDF3k0J8yxyA70UC+yQ8bxqhEB4eZMPmhRC6aiDNjclq3kzw2QwE9GCljmhI0UsaM6YHta+SQDru4zpLJqFPsQzNxXmGYmrjF1w4vyG3TyRuMUoILFKi3sxJDJNmPFeU0iGdd9dbNxSUyxTZXxhv6uUKCCoqJECJElGIqSHCVh8xa6jvYiaucYwnDpVikFg8oYcCV6T9iN55Ry6TWyU9wGo+J0MRbLZOfJ0kYX8jiomiuzmKc80TxlQyqeMBHx1Nf5j7fsoMtQoQTdPCnramP0M4xwmxJ8jlCA508YZg5VlhnnRXmGOYxd0lSRR7aCAgICAgI+BdSawvicA0sgQAAAABJRU5ErkJggg==)'
  },
  NextIconStyle: {
    webkitMaskImage: 'url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAQAAABKfvVzAAAAVklEQVR4AWMgGYyCpQz8GGL/gRAOMCUfMtiRpAEI/zJ0MLASrQEKzzJoEKkBDr8yZBKrAQG3MIiRpmEzKRq+MmSQ5ml1UoK1nZRgfYAt4ihMGoTBKAAAyuhKskx0loIAAAAASUVORK5CYII=)'
  },
  PreviousIconStyle: {
    webkitMaskImage: 'url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAQAAABKfvVzAAAAV0lEQVR4AWMgGYyC/0CIDvgZlpGiwZ7hIUyMsAZWhg6GvzAxwho0GM6C+MRqyGL4BmQTqUGMYQuIRTMNEJAJcxJNPI0I1nZigxUB7EARR2rSWEpqChsFAD6LSrt3LyfiAAAAAElFTkSuQmCC)'
  }
};
var _default = IconFactory;
exports.default = _default;