import React, {useState} from 'react';
import TextField from '@mui/material/TextField';
import Button from '@mui/material/Button';
import { useNavigate } from "react-router-dom";

function Login() {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  let navigate = useNavigate();

  function handleClick(e) {
    e.preventDefault();
    fetch("/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({username, password}),
    }).then((r) => {
      if (r.ok) {
        r.json().then((user) => console.log(user));
      } else {
        r.json().then((err) => console.log(err))
      }
    });
    navigate("/adventure")
  }

  return (
    <div>
      <h1>To continue, please login:</h1>
      <TextField
      label="Username"
      value = {username}
      onChange = {(e) => setUsername(e.target.value)}/>
      <TextField
      label="Password"
      value = {password}
      onChange = {(e) => setPassword(e.target.value)}/>
      <Button onClick={handleClick}>Submit and Continue</Button>
    </div>
  )
}

export default Login