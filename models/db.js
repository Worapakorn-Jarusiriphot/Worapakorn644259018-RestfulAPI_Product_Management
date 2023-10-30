const {Sequelize} = require("sequelize");
const dbConfig = require("../config/db.config");

//Create sequalize instance
const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
  // host: dbConfig.HOST,
  // dialect: "mysql", //postgres //mysql
  // dialectOptions: {
  //   ssl: {
  //     require: true,
  //     rejectUnauthorized: false,
  //   },
  // },
  host: dbConfig.HOST,
  dialect: dbConfig.dialect, // ใช้ค่า dialect ที่กำหนดใน db.config
  pool: dbConfig.pool, // ใช้ค่า pool ที่กำหนดใน db.config
});

//Test the database connection
async function testConection(){
    try {
      await sequelize.authenticate();
      console.log("db.js : Connection has been established successfully.");
      console.log("db.js : Connection has been established by PU");
    } catch (error) {
      console.error("db.js : Unable to connect to the database:", error);
    }
}

testConection();
module.exports = sequelize;