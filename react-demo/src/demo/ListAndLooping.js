function ListAndLooping({items}) {
  return (
    <ul>
      {items.map((person) => (
        <li key={person.id}>
          Name: {person.name}, Age: {person.age}
        </li>
      ))}
    </ul>
  )
}

export default ListAndLooping