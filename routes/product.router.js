const express = require("express");
const router = express.Router();
const Product = require("../controllers/product.controller");

//Create a new product
//http://localhost:5000/products
router.post("/products", async (req, res) => {
  try {
    const newProduct = req.body;
    const createProduct = await Product.createProduct(newProduct);
    res.status(201).json(createProduct);
  } catch (err) {
    res.status(500).json({ error: "Failed to create product" });
  }
});

//Get all products
router.get("/products", async (req, res) => {
  try {
    const products = await Product.getAll();
    res.status(200).json(products);
  } catch (error) {
    res.status(500).json({ error: "Failed to get all products" });
  }
});

//Get Product by ID
router.get("/products/:id", async (req, res) => {
  try {
    const productId = req.params.id;
    const product = await Product.getById(productId);
    res.json(product);
  } catch (error) {
    if (error.kind === "not_found") {
      res.status(404).json({ error: "Product not found" });
    } else {
      res.status(500).json({ error: "Failed to get a product by id" });
    }
  }
});

//Update a product data
router.put("/products/:id", async (req, res) => {
  try {
    const productId = req.params.id;
    const productData = req.body;
    const updateProduct = await Product.updateById(
      productId,
      productData
    );
    res.status(200).json(updateProduct);
  } catch (error) {
    if (error.kind === "not_found") {
      res.status(404).json({ error: "Product not found" });
    } else {
      res.status(500).json({ error: "Failed to update product data" });
    }
  }
});

//Delete a product
router.delete("/products/:id", async (req, res) => {
  try {
    const productId = req.params.id;
    const isDeleted = await Product.removeById(productId);
    if (isDeleted) {
      res
        .status(200)
        .json({
          message: "Product id" + productId + " is deleted",
          isDeleted: isDeleted,
        });
    }
  } catch (error) {
    if (error.kind === "not_found") {
      res.status(404).json({ error: "Product not found" });
    } else {
      res.status(500).json({ error: "Failed to update product data" });
    }
  }
});
module.exports = router;