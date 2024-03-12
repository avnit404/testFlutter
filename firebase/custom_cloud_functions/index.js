const admin = require("firebase-admin/app");
admin.initializeApp();
    
const saveLocation = require('./save_location.js');
exports.saveLocation = saveLocation.saveLocation;