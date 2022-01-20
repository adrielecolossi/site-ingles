import React from "react";
import Home from "./home/home.js";
import Flashcards from "./flashcards/flashcards";
import Exercicios from "./exercicios/exercicios";
import Links from "./links/links";
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";

//import HeaderOne from "./header/header.js";
//<HeaderOne></HeaderOne>
document.title = "Banco de Alimentos Rio Grande"
function App() {
  return (
    <div id="pag">
    
      <Router>
     <Switch>
     <Route path="/links" component={Links}></Route>
     <Route path="/exercicios" component={Exercicios}></Route>
          <Route path="/flashcards" component={Flashcards}></Route>
          <Route path="/" component={Home}></Route>
          </Switch>
      </Router>
    </div>
  );
}

export default App