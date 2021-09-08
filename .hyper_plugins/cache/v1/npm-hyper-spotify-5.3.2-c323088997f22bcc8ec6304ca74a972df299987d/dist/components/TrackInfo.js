"use strict";

var _Object$defineProperty = require("@babel/runtime-corejs2/core-js/object/define-property");

_Object$defineProperty(exports, "__esModule", {
  value: true
});

exports.default = void 0;

const TrackInfoFactory = React => function TrackInfo({
  track
}) {
  return /*#__PURE__*/React.createElement("div", {
    className: "hyper-spotify-track",
    style: styles.trackInfoContainer
  }, /*#__PURE__*/React.createElement("b", null, track.name), track.artist ? /*#__PURE__*/React.createElement("span", null, ' ', "by ", /*#__PURE__*/React.createElement("b", null, track.artist)) : '');
};

const styles = {
  trackInfoContainer: {
    maxWidth: '100%',
    overflow: 'hidden',
    textOverflow: 'ellipsis',
    whiteSpace: 'nowrap'
  }
};
var _default = TrackInfoFactory;
exports.default = _default;