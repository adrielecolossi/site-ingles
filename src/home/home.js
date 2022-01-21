import React from "react";
import { useState, useEffect} from "react";
import './home.css'
import { Link } from "react-router-dom";



/*
<p className="meet"> Conheça mais sobre as ações do BARG!</p>

      <div className="pag">
        {materiass.map((materias) => {
          return (
            <div className={materias.class}>
              <img
                alt={materias.id}
                src={materias.img}
                width={materias.width}
              />

              <Link
                to={{
                  pathname: "/flashcards/" + materias.id,
                  state: {
                    materias,
                  },
                }}
                style={{ textDecoration: "none" }}
              >
                <p className="id-materiass">{materias.id}</p>
                <p className="materias-body">{materias.body}</p>
                <p className="subid" style={{ textDecoration: "none" }}>
                  Clique para mais informações! {materias.data}
                </p>
              </Link>
            </div>
          );
        })}
      </div>
      */


function Materias() {
  window.scrollTo(0, 0);

  let [materias, setMaterias] = useState('')
 let [loading, setLoading]= useState(true)
  let materiasBody;
  if (loading == false) {
    materiasBody = materias.map((materias) => {
      return (
       
        <div className='cards'>
        <div className='title'>
            <p>{materias.nome}</p>
            </div>
            <br></br>
            <div className='body-card'>
            <Link
            to={{
              pathname: "/flashcards/" + materias.id,
              state: {
                materias,
              },
            }}
            style={{ textDecoration: "none", color:'black' }}
          >
            <p>Flashcards</p>
          </Link>
          </div>
          <br></br>
          <div className='body-card'>
            <Link
            to={{
              pathname: "/exercicios/" + materias.id,
              state: {
                materias,
              },
            }}
            style={{ textDecoration: "none", color:'black' }}
          >
            <p>Exercicios</p>
          </Link>
          </div>
          <br></br>
          <div className='body-card'>
            <Link
            to={{
              pathname: "/links/" + materias.id,
              state: {
                materias,
              },
            }}
            style={{ textDecoration: "none", color:'black' }}
          >
            <p>Links úteis</p>
          </Link>
          </div>
        </div>
      );
    })
  } else {
    materiasBody = <p>Carregando</p>;
  }
  useEffect(()=>{
    var axios = require("axios").default;
  
    var options = {method: 'GET', url: 'http://localhost:3001/materias'};
    
    axios.request(options).then(function (response) {
     setMaterias(response.data)
     setLoading(false)
     console.log(response.data)
    }).catch(function (error) {
      console.error(error);
    });
    
  }, [])

  return (
    <div className="pag">
     
  {materiasBody}
    </div>
  );
}

export default Materias;
