const e = require('express');
const { query } = require('express');
const database = require('../infra/database')

exports.getMaterias = function(){
  return  database.query("select materia.id, materia.nome from materia")
}

exports.postFlashcards = function(id){
  return  database.query("select * from flashcard where materia="+id)
}

exports.postExercicios = function(id){
  return  database.query("select * from exercicio where materia="+id)
}

exports.postLinks = function(id){
  return  database.query("select * from linksite where materia="+id)
}