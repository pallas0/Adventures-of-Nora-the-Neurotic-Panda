import React, {useState} from 'react'
import FormControl from '@mui/material/FormControl';
import TextField from '@mui/material/TextField';
import Button from '@mui/material/Button';
import { useNavigate } from "react-router-dom";

function SignUp() {
  const [username, setUsername] = useState("")
  const [password, setPassword] = useState("")
  const [error, setError] = useState(null)

  let navigate = useNavigate();

  function handleClick(e) {
    e.preventDefault()
    fetch("/signup", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        username,
        password,
      }),
    }).then((r) => {
      if (r.ok) {
        r.json().then((user) => console.log(user));
        navigate("/adventure")
      } else {
        r.json().then((err) => setError(err));
      }
    });
  }

  // function test() {
  //   if (error) {
  //     console.log(error.error)
  //   }
  // }

  // test()


  return (
    <div>
      <h1>To begin, please fill out the following information:</h1>
      {/* <TextField
      label="Name"
      defaultValue=""/> */}
      <TextField
      label="Username"
      value = {username}
      onChange = {(e) => setUsername(e.target.value)}/>
      <TextField
      label="Password"
      value = {password}
      onChange = {(e) => setPassword(e.target.value)}/>
      <Button onClick={handleClick}>Submit and Start Game</Button>
      {/* <div>{error}</div> */}
    </div>
  )
}

export default SignUp