import React, {useEffect, useState} from 'react'

function Adventure() {
  const [user, setUser] = useState(null);

  useEffect(() => {
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user))
      }
    })
  }, []);

  return (
    <div>Adventure</div>
  )
}

export default Adventure