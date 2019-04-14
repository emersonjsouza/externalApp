/*global cordova, module*/

module.exports = {
    openWhatsapp: function (phone, msg, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "ExternalApp", "openWhatsapp", [phone, msg]);
    }
};
