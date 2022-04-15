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
        <Container onClick={handleQuoteClick}>[click me for quote ^_^]</Container>
    </div>
  )
}

export default Welcome;