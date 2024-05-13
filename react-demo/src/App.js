import { Link, Routes, Route } from 'react-router-dom'
import ComponentCreation from './demo/ComponentCreation'
import { Fragment } from 'react'
import ConditionalRender from './demo/ConditionalRender'
import ParameterDrilling from './demo/ParameterDrilling'
import EventHandling from './demo/EventHandling'
import UserInputHandling from './demo/UserInputHandling'
import ListAndLooping from './demo/ListAndLooping'
import Slots from './demo/Slots'
import Styles from './demo/Styles'
import States from './demo/States'
import { DataPropagation } from './demo/DataPropagation'
import SideEffects from './demo/SideEffects'

function App() {
  const navItemStyle = {
    marginRight: "16px"
  }

  return (
    <div className="App">
      <h1>React Demo</h1>
      <div className="Navigation">
        <Link className="NavItem" style={navItemStyle} to="/">Component Creation</Link>
        <Link className="NavItem" style={navItemStyle} to="/condition">Conditional Render</Link>
        <Link className="NavItem" style={navItemStyle} to="/parameter">Parameter Drilling</Link>
        <Link className="NavItem" style={navItemStyle} to="/event">Event Handling</Link>
        <Link className="NavItem" style={navItemStyle} to="/user">User Input Handling</Link>
        <Link className="NavItem" style={navItemStyle} to="/list">Lists & Looping</Link>
        <Link className="NavItem" style={navItemStyle} to="/slots">Slots</Link>
        <Link className="NavItem" style={navItemStyle} to="/styles">Styles</Link>
        <Link className="NavItem" style={navItemStyle} to="/states">States</Link>
        <Link className="NavItem" style={navItemStyle} to="/propagation">Scoped Data Propagation</Link>
        <Link className="NavItem" style={navItemStyle} to="/effects">Side Effects</Link>
      </div>
      <Routes>
        <Route path="/" element={<ComponentCreation />} />
        <Route path="/condition" element={
          <Fragment>
            <ConditionalRender condition={false} />
            <ConditionalRender condition={true} />
          </Fragment>
        } />
        <Route path="/parameter" element={
          <Fragment>
            <ParameterDrilling data={114514} />
            <ParameterDrilling data={1919810} />
          </Fragment>
        } />
        <Route path="/event" element={<EventHandling />} />
        <Route path="/user" element={<UserInputHandling />} />
        <Route path="/list" element={
          <ListAndLooping items={[
            { name: "John", age: 30, id: "1" },
            { name: "Jane", age: 28, id: "2" },
            { name: "Bob", age: 25, id: "3" }
          ]} />
        } />
        <Route path="/slots" element={
          <Slots header={<h1>Header</h1>} content={<p>Content</p>} />
        } />
        <Route path="/styles" element={<Styles />} />
        <Route path="/states" element={<States />} />
        <Route path="/propagation" element={
          <DataPropagation data={"provided data from App.js"} />
        } />
        <Route path="/effects" element={<SideEffects />} />
      </Routes>
    </div>
  )
}

export default App
