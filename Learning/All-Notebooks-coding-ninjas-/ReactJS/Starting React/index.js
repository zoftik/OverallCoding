// import { createRoot } from 'react-dom/client';

// // Clear the existing HTML content
// document.body.innerHTML = '<div id="app"></div>';

// // Render your React component instead
// const root = createRoot(document.getElementById('app'));
// root.render(<h1>Hello, world</h1>);


/**JavaScript */
// const heading = document.createElement('h2');
// heading.textContent = "Hello world Script"
// heading.className = "header"
// document.getElementById("root").append(heading)

// console.log("Javascript Element:" , heading);

/**React with JS*/
// import imageOnline from "https://files.codingninjas.in/coding-ninjas-24647.png";
// const reactHeading = React.createElement("h1", {className: "head", id:"reactHead", children:"Hello World React!"});


/**React With JSX */

const jsxHeading =<>
    {/* <React.Fragment> */}
    <h1>About React</h1>
    <p>
        <li>
            lorem
        </li>
        <li>
            lorem
        </li>
        <li>
            lorem
        </li>
    </p>
    {/* </React.Fragment> */}
    </>
    ;
ReactDOM.createRoot(document.getElementById("root")).render(jsxHeading);


// console.log("React Element: " , reactHeading);
