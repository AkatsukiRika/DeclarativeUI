import { useState } from "react"

function UserInputHandling() {
  const [text, setText] = useState("")
  const style = {
    marginTop: "16px"
  }

  return (
    <input
      type="text"
      value={text}
      style={style}
      onChange={(e) => setText(e.target.value)}
      placeholder="Enter text"
    />
  )
}

export default UserInputHandling