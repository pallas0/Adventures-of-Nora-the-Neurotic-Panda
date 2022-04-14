import React, {useEffect, useState} from 'react'
import Button from '@mui/material/Button';
import { useNavigate } from "react-router-dom";

function Welcome() {
  const [user, setUser] = useState(null);
  let navigate = useNavigate();

  useEffect(() => {
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    })
  }, []);
  

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
    </div>
  )
}

export default Welcome;