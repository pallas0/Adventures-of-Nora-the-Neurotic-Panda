import logo from './logo.svg';
import './App.css';
import Welcome  from './Welcome.js'
import SignUp from './SignUp';
import Login from './Login';
import Adventure from './Adventure';
import {Route, Switch} from 'react-router-dom';

function App() {
  return (
    <div className="App">
      <Switch>
        <Route exact path='/signup'>
          <SignUp/>
        </Route>
        <Route exact path='/login'>
          <Login/>
        </Route>
        <Route exact path='/adventure'>
          <Adventure/>
        </Route>
        <Route exact path='/'>
          <Welcome/>
        </Route>
      </Switch>
    </div>
  );
}

export default App;
