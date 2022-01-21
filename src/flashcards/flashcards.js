import React, { useEffect, useState } from "react";
import './flashcards.css'
import { useLocation } from 'react-router-dom'
import ReactCardFlip from "react-card-flip";




function Flashcards(props) {
/*
  const handleClick = () => {
    setIsFlipped(!isFlipped);
  };
 */
  const [loading, setLoading]=useState(true)
  const [flashcards, setFlashcards]=useState('')
  const [id, setId] = useState('')
  const [isFlipped, setIsFlipped] = React.useState({isFlippedZero: false})
const location = useLocation()
let x=0;
let flashcardsBody
const [state, setState] = React.useState({
})
function handleChange(evt) {
  //setState({...state,  [evt.target.className]: false});
  setIsFlipped({[evt.target.className]:false}); 
 
}

function otherhandleChange(evt) {
 // setState({[evt.target.className]: true});
 setIsFlipped({[evt.target.className]:true}); 
}
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
    flashcardsBody = flashcards.map((flashcard) => {
      return (
        <div class="card-react">
<ReactCardFlip isFlipped={isFlipped[flashcard.id]} flipDirection="horizontal">
      <div
        style={{
          backgroundColor: "#60AB9A",
          height: 250,
          width: 300,
          color: "#fff",
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
          textAlign:"center"
        }}
        className={flashcard.id}
        onClick={(e)=>{otherhandleChange(e)}}
        >
      {flashcard.frente}
       
      </div>

      <div
        style={{
          backgroundColor: "#C05746",
          height: 250,
          width: 300,
          color: "#fff",
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
          textAlign:"center"
        }}
        className={flashcard.id}
        onClick={(e)=>{handleChange(e)}}>
         {flashcard.tras}
      </div>
    </ReactCardFlip> <br></br></div>);
    })

  } else{
    let y=0;
    if(loading==true && y==0){
      y=1;
 enviaDados()
    flashcardsBody= <p>Carregando...</p>
  }
}
  


function enviaDados(){

 
     // location.state.materias.id}
 
     var axios = require("axios").default;

     var options = {
       method: 'POST',
       url: 'http://localhost:3001/flashcards',
       headers: {'Content-Type': 'application/json'},
       data: {id: "'"+ location.state.materias.id + "'"}
     };
     
     axios.request(options).then(function (response) {
       setFlashcards(response.data)
       console.log(response.data)
       setLoading(false)
     }).catch(function (error) {
       console.error(error);
     });
  }

  return (
    <>
    <div className="pag-1">
      {flashcardsBody}
      
    </div>
    </>
  );
  
}

export default Flashcards;

