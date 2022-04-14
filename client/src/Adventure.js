import React, {useEffect, useState} from 'react'
import Button from '@mui/material/Button';
import { useNavigate } from "react-router-dom";

function Adventure() {
  const [user, setUser] = useState(null);
  let navigate = useNavigate();

  useEffect(() => {
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user))
      }
    })
  }, []);

  function handleLogOutClick() {
    fetch("/logout", { method: "DELETE"})
      .then((r) => {
        if (r.ok) {
          setUser(null)
          navigate("/")
        }
      })
  }

  return (
    <div>
      <Button onClick={handleLogOutClick}>Logout</Button>
      <Button>Save</Button>
      <p>Story Text</p>
      </div>
  )
}

export default Adventure