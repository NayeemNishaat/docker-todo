if (process.env.MYSQL_HOST) module.exports = require('./mysql');
else module.exports = require('./sqlite'); // Remark: If mysql is not found use sqlite instead! 
