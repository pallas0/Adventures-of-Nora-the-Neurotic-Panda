import logo from './logo.svg';
import './App.css';
import Welcome  from './Welcome.js'
import SignUp from './SignUp';
import Login from './Login';
import Adventure from './Adventure';
import {Routes, Route} from 'react-router-dom';

function App() {
  return (
    <div className="App">
      <Routes>
        <Route path='/signup' element={<SignUp/>}>
        </Route>
        <Route path='/login' element={<Login/>}>
        </Route>
        <Route path='/adventure' element={<Adventure/>}>
        </Route>
        <Route exact path='/' element={<Welcome/>}>
        </Route>
      </Routes>
    </div>
  );
}

export default App;
