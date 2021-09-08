"use strict";

var _interopRequireDefault = require("@babel/runtime-corejs2/helpers/interopRequireDefault");

var _Object$defineProperty = require("@babel/runtime-corejs2/core-js/object/define-property");

_Object$defineProperty(exports, "__esModule", {
  value: true
});

exports.HyperSpotifyHeaderFactory = void 0;

var _HyperOverlay = _interopRequireDefault(require("./HyperOverlay"));

var _HyperSpotifyWidget = _interopRequireDefault(require("../containers/HyperSpotifyWidget"));

const HyperSpotifyHeaderFactory = React => {
  const HyperSpotifyOverlay = (0, _HyperOverlay.default)(React); // eslint-disable-line no-unused-vars

  const HyperSpotifyWidget = (0, _HyperSpotifyWidget.default)(React); // eslint-disable-line no-unused-vars

  const HyperSpotifyHeader = ({
    pluginConfig
  }) => /*#__PURE__*/React.createElement("header", {
    className: "hyper-spotify hoverable",
    style: styles.headerStyle
  }, /*#__PURE__*/React.createElement(HyperSpotifyOverlay, null), /*#__PURE__*/React.createElement(HyperSpotifyWidget, {
    pluginConfig: pluginConfig
  }));

  return HyperSpotifyHeader;
};

exports.HyperSpotifyHeaderFactory = HyperSpotifyHeaderFactory;
const styles = {
  headerStyle: {
    display: 'flex',
    justifyContent: 'center',
    alignItems: 'center',
    position: 'relative',
    opacity: '0.5'
  }
};