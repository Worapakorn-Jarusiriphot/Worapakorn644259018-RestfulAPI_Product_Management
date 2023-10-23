const sql = require("./db.sql");

//Constructor
const Product = function (product) { 
   //Attributes
  this.id = product.id; 
  this.name = product.name;
  this.type = product.type;
  this.imageURL = product.imageURL;
};

//Method
//Insert new product
Product.create = (newProduct, result) => {
  //INSERT INTO product (id, name, type, imageURL) VALUES ("1", "...", "...", "...")
  sql.query("INSERT INTO products SET ?", newProduct, (err, res) => {
    if (err) {
      console.log("error", err);
      result(err, null);
      return;
    }
    console.log("New product inserted:", { id: res.id, ...newProduct });
    result(null, { id: res.id, ...newProduct });
  });
};

//Get All Product
Product.getAll = (result) => {
  //SELECT * FROM products
  sql.query("SELECT * FROM products", (err, res) => {
    if (err) {
      console.log("error", err);
      result(err, null);
      return;
    }
    result(null, res);
  });
};

//Get By ID
Product.getById = (productId, result) => {
  //SELECT * FROM products WHERE id = productId
  sql.query(
    `SELECT * FROM products WHERE id = ${productId}`,
    (err, res) => {
      //fail
      if (err) {
        console.log("error", err);
        result(err, null);
        return;
      }
      //Success
      if (res.length) {
        result(null, res[0]);
        return; 
      }
      //fail
      result({ kind: "not_found" }, null);
    }
  );
};

//Update By ID
Product.updateById = (id, params, result) => { 
  //UPDATE products SET name = "name", type = "type", imageurl = "imageurl" WHERE id ="id"
  sql.query(
    "UPDATE products SET name = ?, type = ?, imageurl = ? WHERE id = ?",
    [params.name, params.type, params.imageURL, id],
    (err, res) => {
      //fail
      if (err) {
        console.log("err", err);
        result(err, null);
        return;
      }
      //fail
      if (res.length == 0) {
        result({ kind: "not_found" }, null);
        return;
      }
      //Success
      result(null, { id: id, ...params });
    }
  );
};

//Delete Product
Product.deleteById = (id, result) =>{
    //DELETE FROM products WHERE id = ?
    sql.query("DELETE FROM products WHERE id = ?", id, (err,res)=>{
      //fail
      if (err) {
        console.log("err", err);
        result(err, null);
        return;
      }
      //fail
      if (res.length == 0) {
        result({ kind: "not_found" }, null);
        return;
      }
      //Success
      console.log("Product id:" + id+ " is deleted !");
      result(null, res);
    });
}

module.exports = Product;
