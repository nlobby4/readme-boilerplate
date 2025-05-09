<!-- ############################################# -->
<!-- Links -->

<!--
  Shields: https://shields.io/
  UTF8 Art: http://aa.en.utf8art.com/
  ASCII Art: https://www.asciiart.eu/
  ASCII Banners: https://patorjk.com/software/taag/
  Unicode Characters: https://www.amp-what.com/
  Braille Art: https://emojicombos.com/
  Spaces: https://jkorpela.fi/chars/spaces.html
  Color for SVG artworks:
    default     : #212529
    prefers dark: #F8F9FA
-- >

<!-- ############################################# -->
<!-- Header -->

<a id="readme-top"></a>

<h1 align="center">
  <img src="./.meta/art-code-style.svg" alt="art-code-style">
  <img src="./.meta/code-style.svg" alt="code-style">
</h1>

<!-- ############################################### -->
<!-- Description -->
<!-- Create a short repository description and add relevant links -->
<!-- IMPORTANT: replace the repository name in REQUEST FEATURE -->

<p align="center">
  This guide defines the coding conventions for the <a href="https://github.com/nlobby4"> nlobby4 organization</a>. Adhering to these conventions will help ensure consistency and readability across the codebase. The reasoning behind these conventions is to promote best practices and improve collaboration among developers.
</p>

<!-- ############################################# -->
<!-- Table of Contents -->
<!-- Create a Table of contents -->

<details>
  <summary>Table of Contents</summary>
  <ol>
    <ul>
      <li><a href="#general-principles">General Principles</a></li>
      <li><a href="#file-and-folder-structure">File and Folder Structure</a></li>
      <li><a href="#naming-conventions">Naming Conventions</a>
        <ul>
          <li><a href="#variables">Variables</a></li>
          <li><a href="#constants">Constants</a></li>
          <li><a href="#classes">Classes</a></li>
          <li><a href="#files">Files</a></li>
        </ul>
      </li>
      <li><a href="#code-formatting">Code Formatting</a></li>
      <li><a href="#variables-and-constants">Variables and Constants</a></li>
      <li><a href="#functions-and-methods">Functions and Methods</a></li>
      <li><a href="#comments-and-documentation">Comments and Documentation</a></li>
      <li><a href="#error-handling">Error Handling</a></li>
      <li><a href="#dependencies-and-imports">Dependencies and Imports</a></li>
      <li><a href="#testing">Testing</a></li>
    </ul>
  </ol>
</details>

<!-- ############################################# -->
<!-- Main Area -->
<!-- Write your basic readme markdown here -->

## General Principles

### **Visual Studio Code Configuration**

- Our organization has a repository with a set of recommended settings for Visual Studio Code. You can find it [here]().

### **Web Template**

- Use the [nlobby4 web template]() for web projects, otherwise use the use [readme-boilerplate as your]() starting point. The usage of the readme-boilerplate is not mandatory, especially in cases where the project is temporary or not intended for public release.

### **Gists**

- add helpful gists to the [nlobby4 gists public]() or [nlobby4 gists private]() repository.

## File and Folder Structure

- prefix files with the beginning letter of the parent folder

  ```
  ├── src/
  │   ├── components/
  |   |   └── c-component.js
  │   ├── utils/
  |   |   └── u-utils.js
  │   ├── services/
  │   └── app.js
  ├── test/
  └── README.md
  ```

<!-- ############################################# -->
<!-- Footer -->
<!-- Add images of used libraries linking to their documentation here -->
<!-- All images have to be contained in the .meta folder -->

<img align="right" src="./.meta/art-footer.svg" alt="art-footer">

<!-- ############################################# -->
<!-- References -->
<!-- Add links to external resources here -->

## Naming Conventions

### Variables

- Use **camelCase** for variables and functions.
  ```javascript
  let userName = "Alice";
  ```

### Constants

- Use **UPPER_SNAKE_CASE** for constants.
  ```javascript
  const MAX_USERS = 100;
  ```

### Classes

- Use **PascalCase** for class names.
  ```javascript
  class UserProfile { ... }
  ```

### Files

- Use lowercase and hyphens for file names (`kebab-case`).
  ```bash
  user-profile.js
  ```

## Code Formatting

- **Indentation**: Use **2 spaces** per indentation level. Avoid tabs.
- **Line Length**: Limit lines to **80 characters**.
- **Semicolons**: Always use semicolons at the end of statements.
- **Braces**: Always use braces for control structures, even for single-line blocks.

  ```javascript
  if (condition) {
    doSomething();
  }
  ```

- **Whitespace**: Add a blank line before functions and methods, and between logical blocks of code.

## Variables and Constants

- Always use descriptive names for variables and constants.
- Avoid abbreviations unless they are widely understood.

  ```javascript
  // Bad
  let t = 10;

  // Good
  let timeoutDuration = 10;
  ```

## Functions and Methods

- Functions should do one thing and do it well.
- Function names should be descriptive and use verbs.
- Use arrow functions for simple function expressions.

  ```javascript
  // Bad
  function doStuff() { ... }

  // Good
  function calculateTotal() { ... }
  ```

  ```javascript
  // Good
  const getUserInfo = () => { ... };
  ```

- Always include a return type when the function returns a value.

## Comments and Documentation

- Write **clear** and **concise** comments explaining why something is done, not what is done.
- Use JSDoc for documenting functions.

  ```javascript
  /**
   * Calculate the total price of items.
   * @param {number} price - The price of a single item.
   * @param {number} quantity - The number of items.
   * @returns {number} The total price.
   */
  function calculateTotal(price, quantity) {
    return price * quantity;
  }
  ```

- Use **TODO** and **FIXME** to highlight unfinished or problematic code.

  ```javascript
  // TODO: Add error handling
  ```

## Error Handling

- Always handle errors using try-catch blocks when necessary.
- Avoid using `console.log` for error handling in production code.
- Use **custom error classes** when dealing with specific types of errors.

  ```javascript
  class NotFoundError extends Error {
    constructor(message) {
      super(message);
      this.name = "NotFoundError";
    }
  }

  throw new NotFoundError("Item not found.");
  ```

## Dependencies and Imports

- Organize imports as follows:
  1. Built-in modules (e.g., `fs`, `path`)
  2. External dependencies (e.g., `lodash`, `axios`)
  3. Internal modules (e.g., `./utils`, `./models`)
- Always use **named imports** where possible.

  ```javascript
  import { formatDate } from "utils";
  ```

- **No unused imports**: Remove any imports that are not used in the file.

## Testing

- All code should be unit tested.
- Follow the naming convention `*_test.js` for test files.
- Use **descriptive** test names that explain what is being tested.

  ```javascript
  test("calculateTotal should return the correct total", () => {
    expect(calculateTotal(10, 2)).toBe(20);
  });
  ```

- Always mock external services or APIs in tests.

---

**Note**: This style guide is subject to change as the project evolves. Ensure to check for updates and new conventions.

```

### How to Customize

1. **Section Specificity**: You can add or remove sections based on the needs of your team or project. For example, if you're working with a JavaScript-based project, you may want to add sections for `ESLint` rules or specific libraries you're using (like React or Express).
2. **Add Links to External Resources**: You can link to external resources, such as code style guides for specific technologies (e.g., [Airbnb JavaScript Style Guide](https://github.com/airbnb/javascript)), for more detailed information.
3. **Examples**: Provide code examples for each guideline to make them clearer and more actionable.
4. **Format**: Markdown allows you to format text easily, use bullet points, numbered lists, and code blocks to make the document more readable.

This style guide can be checked in your repository and updated as needed to ensure that the team follows the same conventions for consistency and readability.
```
