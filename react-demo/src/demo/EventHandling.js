import { useState } from "react"

function EventHandling() {
  const [clicked, setClicked] = useState(false)
  const style = {
    marginTop: "16px"
  }

  return (
    <button style={style} onClick={() => setClicked(true)}>
      {clicked ? "Button clicked" : "Click me"}
    </button>
  )
}

export default EventHandling