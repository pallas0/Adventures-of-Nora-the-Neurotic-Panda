import React, {useEffect, useState} from 'react'
import Button from '@mui/material/Button';
import { useNavigate } from "react-router-dom";
import Container from '@mui/material/Container';

function Welcome() {
  const [user, setUser] = useState(null);
  const [clicked, setClicked] = useState(false);
  const [quote, setQuote] = useState(null);
  const api_link = "https://type.fit/api/quotes"

  let navigate = useNavigate();

  useEffect(() => {
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    })
  }, []);
  
  function handleQuoteClick() {
    if (!clicked) {
      fetch(api_link)
      .then((r) => r.json())
      .then((r) => {
        let n = Math.floor(Math.random()*1000)
        console.log(r[n])
        setQuote(r[n]);
        setClicked(true);
      })
    }
    else {
      setQuote(null)
      setClicked(false)
    }
  }
  

  function handleBeginClick() {
    if (user) {
      fetch("/logout", { method: "DELETE"})
      .then((r) => {
        if (r.ok) {
          setUser(null)
        }
      })
    }
    navigate("/signup")
  }
  
  function handleResumeClick() {
    if (user) {
      navigate("/adventure")
    }
    else {
      navigate("/login")
    }
  }

  return (
    <div>
        <h1>Adventures of Nora the Neurotic Panda</h1>
        <Button onClick={handleBeginClick}>Begin Adventure</Button>
        <Button onClick={handleResumeClick}>Resume Adventure</Button>
        <p className="p1">It’s just another normal day for Nora and her pet cat, Archduke Ferdinand – until she hears a mysterious sound in her kitchen.  Does she satisfy her neurotic tendencies and investigate?  Does she keep her wits about her as she falls head-long into a vampiric conspiracy surrounding her apartment?  Or does she stubbornly ignore the increasingly strange signs throughout her typical day?</p>
        <p className='p2'>In this fantasy, sci-fi text-based adventure game, you decide Nora’s choices and fate.</p>
        <p className='p3'>Create an account through ‘begin adventure’ or click ‘resume adventure’ if you’re a returning player. </p>
        <div className="quote" onClick={handleQuoteClick}>{clicked ? <Container onClick={handleQuoteClick}>"{quote.text}"
        <br/> - {quote.author}<br/>
        </Container> : "[click for a quote ^_^]"}</div>
    </div>
  )
}

export default Welcome;