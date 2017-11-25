
var exec = require('cordova/exec'),
    cordova = require('cordova');

module.exports = {
    exitApp: function (successCallback, errorCallback) {
        exec(successCallback, errorCallback, "TigerCityAR", "exitApp", []);
    },
    openAR: function (serverUrl, userId, password, successCallback, errorCallback) {
        exec(successCallback, errorCallback, "TigerCityAR", "openAR", [serverUrl, userId, password]);
    },
    onOpenUrl: function (successCallback, errorCallback) {
        exec(successCallback, errorCallback, "TigerCityAR", "onOpenUrl", []);
    },
    onBackToCordovaView: function (successCallback, errorCallback) {
        exec(successCallback, errorCallback, "TigerCityAR", "onBackToCordovaView", []);
    }
};

