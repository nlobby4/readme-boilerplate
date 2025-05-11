#!/usr/bin/env node

import inquirer from "inquirer";
import fs from "fs";

// Define ecosystems and their corresponding package-ecosystem names
const ecosystems = {
  npm: "npm",
  python: "pip",
  ruby: "bundler",
  maven: "maven",
  go: "gomod",
  docker: "docker",
  rust: "cargo",
  yarn: "yarn",
  github_actions: "github-actions",
};

// Function to prompt the user for ecosystem selections
async function selectEcosystems() {
  // Prompt the user to select multiple ecosystems
  const { ecosystemsChoice } = await inquirer.prompt([
    {
      type: "checkbox",
      message:
        "Select ecosystems you want to include in the Dependabot configuration (use space to select, enter to confirm):",
      name: "ecosystemsChoice",
      choices: Object.keys(ecosystems).map((key) => ({
        name: key.charAt(0).toUpperCase() + key.slice(1), // Capitalize ecosystem names
        value: key,
      })),
    },
  ]);

  // Generate the Dependabot configuration based on the selected ecosystems
  generateDependabotConfig(ecosystemsChoice);
}

// Function to generate the dependabot.yml file based on user selection
function generateDependabotConfig(selectedEcosystems) {
  const DEPENDABOT_FILE = "dependabot.yml"; // Define the output file name
  const fileContent = [];

  fileContent.push("version: 2\nupdates:");

  // Loop through the selected ecosystems and create corresponding entries
  selectedEcosystems.forEach((ecosystem) => {
    const ecosystemName = ecosystems[ecosystem];
    fileContent.push(`  - package-ecosystem: ${ecosystemName}`);
    fileContent.push("    directory: /");
    fileContent.push("    schedule:");
    fileContent.push("      interval: monthly");
    fileContent.push(""); // Add space between entries
  });

  // Write the content to the dependabot.yml file
  fs.writeFileSync(DEPENDABOT_FILE, fileContent.join("\n"));

  console.log(
    `Dependabot configuration has been successfully generated at ${DEPENDABOT_FILE}`
  );
}

// Execute the prompt and generate the file
selectEcosystems();
