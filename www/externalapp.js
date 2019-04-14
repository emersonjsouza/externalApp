/*global cordova, module*/

module.exports = {
    openWhatsapp: function (phone, msg, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "ExternalApp", "openWhatsapp", [phone, msg]);
    },
    openPhone: function (phone, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "ExternalApp", "openPhone", [phone]);
    }
};
