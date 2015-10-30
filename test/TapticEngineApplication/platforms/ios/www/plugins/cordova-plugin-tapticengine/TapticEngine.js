cordova.define("cordova-plugin-tapticengine.TapticEngine", function(require, exports, module) { /*
 * Project: cordova-plugin-tapticengine
 * Version: 1.0.0
 * File: TapticEngine.js
 * Author: Matteo Pisani
 * E-Mail: matteo.pisani.91@gmail.com
 * Linkedin: https://www.linkedin.com/in/matteopisani
 */

var exec = require('cordova/exec');
var TapticEngine = function (){};
TapticEngine.prototype.generateTapticFeedback = function(onData) { exec(onData, null, "TapticEngine", "generateTapticFeedback", []); };
module.exports = new TapticEngine();

});
