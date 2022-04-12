import React from 'react'
import FormControl from '@mui/material/FormControl';
import TextField from '@mui/material/TextField';
import Button from '@mui/material/Button';
function SignUp() {
  return (
    <div>
      <TextField
      label="Name"
      defaultValue=""/>
      <TextField
      label="Username"
      defaultValue=""/>
      <TextField
      label="Password"
      defaultValue=""/>
      <Button>Submit and Start Game</Button>
    </div>
  )
}

export default SignUp