const dao= require('../data/data.js');


exports.getMaterias = function(){

    return dao.getMaterias();
}


exports.postFlashcards = function(id){

        return dao.postFlashcards(id);
    }
    

    exports.postExercicios = function(id){

        return dao.postExercicios(id);
    }

    exports.postLinks = function(id){

        return dao.postLinks(id);
    }
    