function ConditionalRender({ condition }) {
  return (
    <div>
      {condition ? (
        <p>This component is rendered with condition "true".</p>
      ) : (
        <p>This component is rendered with condition "false".</p>
      )}
    </div>
  );
}

export default ConditionalRender