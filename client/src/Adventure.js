import React, {useEffect, useState} from 'react'
import Button from '@mui/material/Button';
import { useNavigate } from "react-router-dom";
import Container from '@mui/material/Container';

function Adventure() {
  const [user, setUser] = useState(null);
  
  let navigate = useNavigate();

  useEffect(() => {
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => {
          setUser(user);
        })
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

  const render_story = user ? <Container key={user.upcoming_situation.id}>
    {user.upcoming_situation_text}
  </Container> : <Container></Container>



  const mapped_choices = () => {
    if (user) {
      const choice_list = user.upcoming_choices.map((choice) => {
        return <Container key={choice.id}>{choice.choice_text}</Container>
      })
      return choice_list
    }
  }

 

  return (
    <div>
      <Button onClick={handleLogOutClick}>Logout</Button>
      <Button>Save</Button>
      {render_story}
      {mapped_choices()}
      </div>
  )
}


//if user.user_choices doesn't exist
  //show situation1.story_text
//else
//user.choice.choice_text
//end
//^stick methods in the models to make retrieval easier
//
///user.user_choice is just going to get replaced at each choice
//
//
//patch request on save
//update through backend as well
export default Adventure