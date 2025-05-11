#!/bin/bash

DEPENDABOT_FILE="dependabot.yml"

# Initialize ecosystem flags
npm_ecosystem=false
python_ecosystem=false
ruby_ecosystem=false
maven_ecosystem=false
go_ecosystem=false
docker_ecosystem=false
rust_ecosystem=false
yarn_ecosystem=false
github_actions_ecosystem=false

# Function to display the menu and allow the user to toggle options
toggle_ecosystem() {
  PS3="Select an ecosystem to toggle (press Enter to finish): "
  options=("npm (Node.js)" "Python (pip, requirements.txt, or Pipfile)" "Ruby (Gemfile)" "Maven (pom.xml)" "Go (go.mod)" "Docker (Dockerfile)" "Rust (Cargo.toml)" "Yarn (yarn.lock)" "GitHub Actions (workflows)" "Done")

  select opt in "${options[@]}"; do
    case $opt in
      "npm (Node.js)")
        npm_ecosystem=$([ $npm_ecosystem == true ] && echo false || echo true)
        echo "npm ecosystem toggled: $npm_ecosystem"
        ;;
      "Python (pip, requirements.txt, or Pipfile)")
        python_ecosystem=$([ $python_ecosystem == true ] && echo false || echo true)
        echo "Python ecosystem toggled: $python_ecosystem"
        ;;
      "Ruby (Gemfile)")
        ruby_ecosystem=$([ $ruby_ecosystem == true ] && echo false || echo true)
        echo "Ruby ecosystem toggled: $ruby_ecosystem"
        ;;
      "Maven (pom.xml)")
        maven_ecosystem=$([ $maven_ecosystem == true ] && echo false || echo true)
        echo "Maven ecosystem toggled: $maven_ecosystem"
        ;;
      "Go (go.mod)")
        go_ecosystem=$([ $go_ecosystem == true ] && echo false || echo true)
        echo "Go ecosystem toggled: $go_ecosystem"
        ;;
      "Docker (Dockerfile)")
        docker_ecosystem=$([ $docker_ecosystem == true ] && echo false || echo true)
        echo "Docker ecosystem toggled: $docker_ecosystem"
        ;;
      "Rust (Cargo.toml)")
        rust_ecosystem=$([ $rust_ecosystem == true ] && echo false || echo true)
        echo "Rust ecosystem toggled: $rust_ecosystem"
        ;;
      "Yarn (yarn.lock)")
        yarn_ecosystem=$([ $yarn_ecosystem == true ] && echo false || echo true)
        echo "Yarn ecosystem toggled: $yarn_ecosystem"
        ;;
      "GitHub Actions (workflows)")
        github_actions_ecosystem=$([ $github_actions_ecosystem == true ] && echo false || echo true)
        echo "GitHub Actions ecosystem toggled: $github_actions_ecosystem"
        ;;
      "Done")
        break
        ;;
      *)
        echo "Invalid option. Please choose a valid option."
        ;;
    esac
  done
}

# Call the function to display the menu
toggle_ecosystem

# Generate or update dependabot.yml
echo "version: 2" > $DEPENDABOT_FILE
echo "updates:" >> $DEPENDABOT_FILE

# Add npm entry if npm ecosystem exists
if [ "$npm_ecosystem" = true ]; then
  echo "  - package-ecosystem: npm" >> $DEPENDABOT_FILE
  echo "    directory: /" >> $DEPENDABOT_FILE
  echo "    schedule:" >> $DEPENDABOT_FILE
  echo "      interval: monthly" >> $DEPENDABOT_FILE
fi

# Add Python entry if Python ecosystem exists
if [ "$python_ecosystem" = true ]; then
  echo "  - package-ecosystem: pip" >> $DEPENDABOT_FILE
  echo "    directory: /" >> $DEPENDABOT_FILE
  echo "    schedule:" >> $DEPENDABOT_FILE
  echo "      interval: monthly" >> $DEPENDABOT_FILE
fi

# Add Ruby entry if Ruby ecosystem exists
if [ "$ruby_ecosystem" = true ]; then
  echo "  - package-ecosystem: bundler" >> $DEPENDABOT_FILE
  echo "    directory: /" >> $DEPENDABOT_FILE
  echo "    schedule:" >> $DEPENDABOT_FILE
  echo "      interval: monthly" >> $DEPENDABOT_FILE
fi

# Add Maven entry if Maven ecosystem exists
if [ "$maven_ecosystem" = true ]; then
  echo "  - package-ecosystem: maven" >> $DEPENDABOT_FILE
  echo "    directory: /" >> $DEPENDABOT_FILE
  echo "    schedule:" >> $DEPENDABOT_FILE
  echo "      interval: monthly" >> $DEPENDABOT_FILE
fi

# Add Go entry if Go ecosystem exists
if [ "$go_ecosystem" = true ]; then
  echo "  - package-ecosystem: gomod" >> $DEPENDABOT_FILE
  echo "    directory: /" >> $DEPENDABOT_FILE
  echo "    schedule:" >> $DEPENDABOT_FILE
  echo "      interval: monthly" >> $DEPENDABOT_FILE
fi

# Add Docker entry if Dockerfile exists
if [ "$docker_ecosystem" = true ]; then
  echo "  - package-ecosystem: docker" >> $DEPENDABOT_FILE
  echo "    directory: /" >> $DEPENDABOT_FILE
  echo "    schedule:" >> $DEPENDABOT_FILE
  echo "      interval: monthly" >> $DEPENDABOT_FILE
fi

# Add Rust entry if Rust ecosystem exists
if [ "$rust_ecosystem" = true ]; then
  echo "  - package-ecosystem: cargo" >> $DEPENDABOT_FILE
  echo "    directory: /" >> $DEPENDABOT_FILE
  echo "    schedule:" >> $DEPENDABOT_FILE
  echo "      interval: monthly" >> $DEPENDABOT_FILE
fi

# Add Yarn entry if Yarn ecosystem exists
if [ "$yarn_ecosystem" = true ]; then
  echo "  - package-ecosystem: yarn" >> $DEPENDABOT_FILE
  echo "    directory: /" >> $DEPENDABOT_FILE
  echo "    schedule:" >> $DEPENDABOT_FILE
  echo "      interval: monthly" >> $DEPENDABOT_FILE
fi

# Add GitHub Actions entry if workflows exist
if [ "$github_actions_ecosystem" = true ]; then
  echo "  - package-ecosystem: github-actions" >> $DEPENDABOT_FILE
  echo "    directory: /" >> $DEPENDABOT_FILE
  echo "    schedule:" >> $DEPENDABOT_FILE
  echo "      interval: monthly" >> $DEPENDABOT_FILE
fi

echo "Dependabot configuration has been updated."
