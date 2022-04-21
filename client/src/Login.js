import React, {useState} from 'react';
import TextField from '@mui/material/TextField';
import Button from '@mui/material/Button';
import Alert from '@mui/material/Alert';
import { useNavigate } from "react-router-dom";

function Login() {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState(null)

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
        navigate("/adventure")
      } else {
        r.json().then((err) => setError(err.error))
      }
    });
  }



  return (
    <div>
      <h1>To continue, please login:</h1>
      <TextField
      label="Username"
      value = {username}
      className = "user-text"
      onChange = {(e) => setUsername(e.target.value)}/>
      <TextField
      label="Password"
      value = {password}
      className = "password-text"
      onChange = {(e) => setPassword(e.target.value)}/>
      <Button onClick={handleClick}>Submit and Continue</Button>
      <div> { error ? <Alert severity="error" key={error}>{error}</Alert>
       : null} </div>
    </div>
  )
}

export default Login