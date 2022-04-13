import React, {useEffect, useState} from 'react'
import Button from '@mui/material/Button';
import { useNavigate } from "react-router-dom";

function Welcome() {
  const [user, setUser] = useState(null);

  useEffect(() => {
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    })
  }, []);
  
  let navigate = useNavigate();

  function handleBeginClick() {
    navigate("/signup")
  }
  
  function handleResumeClick() {
    navigate("/adventure")
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