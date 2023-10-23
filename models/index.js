const dbConfig = require("../config/db.config")

// console.log("dbConfig: ", config); 

const {Sequelize} = require('sequelize');
// const sequelize = new Sequelize(config.DB, config.USER, config.PASSWORD, {
//     host:config.HOST,
//     dialect: config.dialect,
//     dialectOptions:{
//         ssl: {
//             require: true,
//             rejectUnauthorized: false, // <-- You might need this line as well
//             ca: fs.readFileSync('C:\\mysql-ssl\\ca-cert.pem'),
//             cert: fs.readFileSync('C:\\mysql-ssl\\server-cert.pem'),
//             key: fs.readFileSync('C:\\mysql-ssl\\server-key.pem')
//           }
//     },
//     pool:{
//         max:config.pool.max,
//         min:config.pool.min,
//         acquire:config.pool.acquire,
//         idle:config.pool.idle
//     }
// })
const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
    host: dbConfig.HOST,
    dialect: dbConfig.dialect,
    // operatorsAliases: false,
    pool: dbConfig.pool,
    ssl: dbConfig.ssl,
    dialectOptions: dbConfig.dialectOptions
  });


const db = {};
db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.user = require("./user.model")(sequelize, Sequelize);
db.role = require("./role.model")(sequelize, Sequelize);

//console.log
//console.log
// console.log("sequelize : ", sequelize ); 
//console.log
//console.log


//one to many
db.role.belongsToMany(db.user,{
    through:"users_roles"
});
//one to many
db.user.belongsToMany(db.role,{
    through:"users_roles"
});

db.ROLES=["user", "admin", "moderator"]

module.exports = db;