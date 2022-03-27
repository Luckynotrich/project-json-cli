import {useEffect,useState} from 'react'
import './App.css';

function App() {
  const [myResults,setMyResults] = useState()
  const [toggle,setToggle] = useState(false)

useEffect(()=> {
  async function GetSomeResults() {
    const response = (await (await fetch('/libraries')).json());
     const strArResults = await Object.keys(response).map(e => response[e].libname)
    await setMyResults(strArResults.map((el,key)=><li key={key}>{el}</li>))
    
  }
  GetSomeResults();
  },[])
  
 
  return (
    <div className="App">
      <button onClick={()=> {
       setToggle(true) 
      //console.log(myResults)
           }}
         style={{backgroundcolor: 'blue'}} >Button</button> 
         {toggle ?<ul>{myResults}</ul>:<p>Click for results</p>}
    </div>
  );
}

export default App;
