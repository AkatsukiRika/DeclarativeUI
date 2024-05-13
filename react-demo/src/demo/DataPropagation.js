import { createContext, useContext } from "react"

const CustomContext = createContext()

export function DataPropagation({data}) {
  return (
    <CustomContext.Provider value={data}>
      <Intermediate />
    </CustomContext.Provider>
  )
}

function Intermediate() {
  return <Child />;
}

function Child() {
  const data = useContext(CustomContext);
  return <p>Received data: {data}</p>;
}