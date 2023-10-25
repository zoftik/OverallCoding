import { useState, useEffect } from "react";

export default function Input() {
  const [name, setName] = useState("");
  const [lastName, setlastName] = useState("");

  useEffect(() => {
    document.title = name + " " + lastName;
  });
  return (
    <>
      <div className="section">
        <Row label="Name">
          <input value={name} onChange={(e) => setName(e.target.value)} />
        </Row>
        <Row label="Last Name">
          <input
            value={lastName}
            onChange={(e) => setlastName(e.target.value)}
          />
        </Row>
      </div>

      <h2>Hello,{name + " " + lastName} </h2>
    </>
  );
}

function Row(props) {
  const { label } = props;
  return (
    <>
      <lable>
        {label}
        <br />
      </lable>
      {props.children}
      <hr />
    </>
  );
}
