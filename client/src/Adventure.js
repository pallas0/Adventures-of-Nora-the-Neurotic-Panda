import React, {useEffect, useState} from 'react'
import Button from '@mui/material/Button';
import { useNavigate } from "react-router-dom";
import Container from '@mui/material/Container';
import Grid from '@mui/material/Grid';
import Box from '@mui/material/Box';

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
    if (user) {
      fetch("/logout", { method: "DELETE"})
      .then((r) => {
        if (r.ok) {
          setUser(null)
          navigate("/")
        }
      })
    }
    else {
      navigate("/")
    }
  }

  function handleResetClick() {
    fetch(`/user_choices/${user.user_choice_id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({choice_id: 1}),
    })
    .then((r) => {
      window.location.reload(false);
    })
  }

  function handleChoiceClick(id) {
    console.log(user.user_choice_id)
    fetch(`/user_choices/${user.user_choice_id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({choice_id: id}),
    })
    .then((r) => r.json())
    .then((r) => {
      console.log(r)
      window.location.reload(false);
    })
  }

  function handleHomeClick() {
    navigate("/");
  }

  const render_story = user ? <Container key={user.upcoming_situation.id}>
    {user.upcoming_situation_text}
  </Container> : <Container></Container>



  const mapped_choices = () => {
    if (user) {
      const choice_list = user.upcoming_choices.map((choice) => {
        return <button className="eachchoice"
        key={choice.id}
        onClick={() => handleChoiceClick(choice.id)}>{choice.choice_text}</button>
      })
      return choice_list
    }
  }

 

  return (
    <div className='adventure_main'>
      <div className="buttons">
      <Button className="logout" onClick={handleLogOutClick}>Logout</Button>
      <Button onClick={handleHomeClick}>Home</Button>
      <Button className="reset" onClick={handleResetClick}>Start Over</Button>
      </div>
      <div className="story-text">
      {render_story}
      </div>
      <div  className="choices">
      {mapped_choices()}
      </div>
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