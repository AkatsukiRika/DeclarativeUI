import { useState } from "react"

function States() {
  const [count, setCount] = useState(0)
  const style = {
    marginTop: "16px"
  }

  return (
    <button style={style} onClick={() => setCount(count + 1)}>
      Count: {count}
    </button>
  )
}

export default States