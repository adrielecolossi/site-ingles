const express = require("express");
const router = express.Router();
const routesService = require("../service/services.js");

//const multerConfig = require('../config/multer')




router.get("/materias",  async function (req, res) {
    const materias = await routesService.getMaterias();
    res.json(materias);
  });

  router.post("/flashcards",  async function (req, res) {
    let id= req.body.id;
   const flashcards = await routesService.postFlashcards(id);
  res.json(flashcards);
  });

  router.post("/exercicios",  async function (req, res) {
    let id= req.body.id;
   const exercicios = await routesService.postExercicios(id);
  res.json(exercicios);
  });

  router.post("/links",  async function (req, res) {
    let id= req.body.id;
   const links = await routesService.postLinks(id);
  res.json(links);
  });


  module.exports =router