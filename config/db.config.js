//require('dotenv').config();
//const fs = require('fs');

module.exports = {
  HOST: "localhost",
  USER: "root",
  PASSWORD: null,
  DB: "product_management",
  // dialect: "mysql",
  dialect: "mariadb",
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  },
  // ssl: true,
  // dialectOptions: {
  //   ssl: {
  //     require: true,
  //     // Path to the CA certificate
  //     ca: fs.readFileSync('C:\\mysql-ssl\\ca-cert.pem'),
  //     // Path to the SSL certificate
  //     cert: fs.readFileSync('C:\\mysql-ssl\\server-cert.pem'),
  //     // Path to the SSL private key
  //     key: fs.readFileSync('C:\\mysql-ssl\\server-key.pem'),
  //     rejectUnauthorized: false
  //      // added if using a self-signed certificate
  //   }
  // }
};

// module.exports = {
//   HOST: process.env.HOST,
//   USER: process.env.USER,
//   PASSWORD: process.env.PASSWORD,
//   DB: process.env.DB,
//   dialect:"postgres",
//   pool:{
//     max:5,
//     min:0,
//     acquire:30000,
//     idle:10000
//   }
// };

// module.exports = {
//   HOST: "localhost",
//   USER: "root",
//   PASSWORD: "",
//   DB: "product_management",
//   dialect: "mysql",
//   pool:{
//     max:5,
//     min:0,
//     acquire:30000,
//     idle:10000
//   }
// };

// module.exports = {
//   HOST: "localhost",
//   USER: "root",
//   PASSWORD: "", 
//   DATABASE: "product_management",
// };