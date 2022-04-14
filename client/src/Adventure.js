import React, {useEffect, useState} from 'react'
import Button from '@mui/material/Button';
import { useNavigate } from "react-router-dom";
import Container from '@mui/material/Container';

function Adventure() {
  const [user, setUser] = useState(null);
  const [situationText, setSituationText] = useState("empty")

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


  // const render_user = user.upcoming_choices.map((choice) => {
  //     <Container key={choice.id}>{choice.choice_text}</Container>
  //   })

  //console.log(render_user())

  function mapped_choices() {
    if (user) {
      const choice_list = user.upcoming_choices.map((choice) => {
        return choice.choice_text
      })
      return choice_list
    }
  }
  // const rendered_user = user ? mapped_choices() : "nope"

  function test() {
    if (user) {
      console.log(mapped_choices())
    }
    else {
      console.log("loading")
    }
  }
  test()

  return (
    <div>
      <Button onClick={handleLogOutClick}>Logout</Button>
      <Button>Save</Button>
      {render_story}
      {/* {rendered_user} */}
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