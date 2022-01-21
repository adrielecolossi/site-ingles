import React, { useEffect, useState } from "react";
import { useLocation } from 'react-router-dom'




function Exercicios(props) {
/*
  const handleClick = () => {
    setIsFlipped(!isFlipped);
  };
 */
  const [loading, setLoading]=useState(true)
 // const [Exercicios, setExercicios]=useState('')
  const [exercicios, setExercicios] = useState('')
 // const [isFlipped, setIsFlipped] = React.useState({isFlippedZero: false})
const location = useLocation()
let x=0;
let exerciciosBody;


/*
function sett(flashcard){
  setIsFlipped({
    ...isFlipped,
  [flashcard.id]: false
  })
  console.log(isFlipped)
}
*/
  if (loading == false && x==0) {
 x=1
    exerciciosBody = exercicios.map((exercicio) => {
      return (
        <li><a href={exercicio.linksite}>{exercicio.linksite}</a></li>
);
    })

  } else{
    let y=0;
    if(loading==true && y==0){
      y=1;
 enviaDados()
    exerciciosBody= <p>Carregando...</p>
  }
}
  


function enviaDados(){

 
     // location.state.materias.id}
 
     var axios = require("axios").default;

     var options = {
       method: 'POST',
       url: 'http://localhost:3001/exercicios',
       headers: {'Content-Type': 'application/json'},
       data: {id: "'"+ location.state.materias.id + "'"}
     };
     
     axios.request(options).then(function (response) {
       setExercicios(response.data)
       console.log(response.data)
       setLoading(false)
     }).catch(function (error) {
       console.error(error);
     });
  }

  return (
    <>
    <div className="pag-1">
        <ol>
      {exerciciosBody}
      </ol>
    </div>
    </>
  );
  
}

export default Exercicios;

