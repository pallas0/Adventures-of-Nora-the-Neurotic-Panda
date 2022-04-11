import React from 'react'
import FormControl from '@mui/material/FormControl';
import TextField from '@mui/material/TextField';

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
    </div>
  )
}

export default SignUp