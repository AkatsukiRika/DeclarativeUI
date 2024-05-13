import { useEffect } from "react"

function SideEffects() {
  useEffect(() => {
    setTimeout(() => {
      alert("Side effect triggered!")
    }, 1500)
  }, [])
  const style = {
    marginTop: "16px"
  }

  return <div style={style}>
    Side effect will be triggered after 1500ms.
  </div>
}

export default SideEffects