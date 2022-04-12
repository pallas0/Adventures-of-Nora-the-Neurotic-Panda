import React from 'react';
import TextField from '@mui/material/TextField';
import Button from '@mui/material/Button';

function Login() {
  return (
    <div>
      <h1>To continue, please login:</h1>
      <TextField
      label="Username"
      defaultValue=""/>
      <TextField
      label="Password"
      defaultValue=""/>
      <Button>Submit and Continue</Button>
    </div>
  )
}

export default Login