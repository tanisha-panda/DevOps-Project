import React from 'react';
import logo from './vite.svg'; // ✅ Corrected path
import './App.css'; // optional

function App() {
  return (
    <div className="App">
      <h1>Welcome to My App</h1>
      <img src={logo} alt="Vite Logo" width="200" />
    </div>
  );
}

export default App;
