import * as React from 'react';
import Button from '@mui/material/Button';
import { Route, Switch } from "react-router-dom";

function Welcome() {
  return (
    <div>
        <h1>Adventures of Nora the Neurotic Panda</h1>
        <Button>Begin Adventure</Button>
        <Button>Resume Adventure</Button>
    </div>
  )
}

export default Welcome;