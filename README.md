<!-- ? ############################################# -->
<!-- ? Links -->

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

<!-- ? ############################################# -->
<!-- ? Header -->
<!-- TODO: Replace the logo and banner if needed -->
<!-- markdownlint-disable MD013 -->

<a id="readme-top"></a>

<h1 align="center" style="padding-bottom: 0;">

  <img height="200" src="https://raw.githubusercontent.com/nlobby4/.organization/refs/heads/main/Logos/.current.png" alt="logo"><img width="355" src="https://raw.githubusercontent.com/nlobby4/.organization/refs/heads/main/Banners/.current.png" alt="banner">

<!-- markdownlint-enable MD013 -->
<!-- ? ############################################# -->
<!-- ? Shields -->
<!-- TODO: You can add relevant shields from shields.io here-->
<!-- markdownlint-disable MD013 -->

  <div align="center">
    <a href="https://github.com/nlobby4" style="text-decoration: none;">
      <img src="https://img.shields.io/badge/founded:2024-black?logo=github" alt="founded">
    </a>
    <a href="https://flockmod.com/r/nlobby4" style="text-decoration: none;">
      <img src="https://img.shields.io/badge/r/nlobby4-black" alt="fm-room">
    </a>
    <a href="https://www.npmjs.com/org/nlobby4" style="text-decoration: none;">
      <img src="https://img.shields.io/badge/npm%20packages-black?logo=npm&color=000000" alt="npm">
    </a>
    <a href="https://nlobby4.org" style="text-decoration: none;">
      <img src="https://img.shields.io/badge/nlobby4.org-black?style=flat-square&logo=firefox&logoColor=white&color=000000" alt="website">
    </a>
  </div>
</h1>

<!-- markdownlint-enable MD013 -->
<!-- ? ############################################### -->
<!-- ? Description -->
<!-- TODO: Create a short repository description -->

<p align="center">
  This repository serves as a template for creating clean and consistent
  repositories across the entire nlobby4 codebase. It also includes reusable
  resources like issue templates, contributing guidelines, and other common
  Markdown files and editor configurations, which streamline repository creation
  and maintenance.
</p>

<!-- ? ############################################### -->
<!-- ? URLs -->
<!-- TODO: Replace the repository url in "★ REQUEST FEATURE" and "⚠ REPORT BUG" -->
<!-- markdownlint-disable MD013 -->

<div align="center">
  <p style="white-space: pre;">
    ⓘ <a href="https://nlobby4.org/news/" style="white-space: nowrap;">​[NEWS] ​</a>  🖿 <a href="https://nlobby4.org/draw/" style="white-space: nowrap;">​[DEMO] ​</a>  ★ <a href="https://github.com/nlobby4/readme-boilerplate/issues/new?template=feature_request.yml" style="white-space: nowrap;">​[REQUEST FEATURE] ​</a>  ⚠ <a href="https://github.com/nlobby4/readme-boilerplate/issues/new?template=bug_report.yml" style="white-space: nowrap;">​[REPORT BUG]​</a>
  </p>
</div>

<!-- markdownlint-enable MD013 -->
<!-- ? ############################################# -->
<!-- ? Table of Contents -->
<!-- TODO: Update the Table of Contents-->

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#usage">Usage</a>
      <ul>
        <li><a href="#a-copy-to-an-existing-repository">Existing Repository</a></li>
        <li><a href="#b-start-a-new-repository">New Repository</a></li>
      </ul>
    </li>
  </ol>
</details>

<!-- ? ############################################# -->
<!-- ? Main Area -->
<!-- TODO: Write your basic readme markdown here -->
<!-- TODO: Make paragraphs start on a new line after every sentence -->
<!-- TODO: Add a "back to top" button and horizontal bar "---" for every section:

  <p align="right">[<a href="#readme-top">back to top</a>]</p>

  ---

-->

## Usage

The markdown files include `TODO` comments that explain the purpose of each
section, along with usage guidelines. These comments can be removed once you
have acknowledged their purpose. Depending on the needs of your repository, you
can decide whether to keep or remove specific sections or files. Nevertheless,
it's still recommended to install the suggested extensions and keep the
`.editorconfig` file.

In general there are two ways to utilize this repository:

### A. Copy to an Existing Repository

If you already have an existing repository, you can easily copy and paste the
specific files you need, or download the repository as a ZIP file [here](https://github.com/nlobby4/readme-boilerplate/archive/refs/heads/main.zip).
Alternatively, you can clone the repository using Git.

### B. Start a New Repository

This repository is marked as a **template**, which allows you to select it as
one when creating a new repository via GitHub. This will result in all the
contained files being copied to your new repository. Once you open the repository
in vscode it will prompt you to install the recommended extensions and will
automatically apply the workspace settings.

> [!TIP]
> If you are an organization member, you can also follow the
> [jump-start instructions](https://github.com/nlobby4?view_as=member)
> in the **member only** organization view for a more complete setup.

<p align="right">[<a href="#readme-top">back to top</a>]</p>

---

## Apply These Changes

After adding the template to your project, you will have to make some minor
adjustments to ensure everything works correctly. The following table outlines
the files you should modify and the changes you need to make:

| **File** | **Description** |
|:---------|:----------------|
| `README.md`                            | <ul><li>Replace the header and banner images via the `.meta` folder if needed</li><li>Replace the repository URL to your own in the **URLs** section</li></ul> |
| `AUTHORS`                              | <ul><li>Add contributors and maintainers of the repository</li></ul>                                                                                           |
| `CODEOWNERS`                           | <ul><li>Replace the people or teams responsible for specific paths of the repository</li></ul>                                                                 |
| `feature_request.yml` `bug_report.yml` | <ul><li>Replace `readme-boilerplate` with your repository name</li><li>Adapt the templates if required</li></ul>                                               |
| `LICENSE`                              | <ul><li>[Choose a license](https://choosealicense.com/) that fits your project (default: [MIT License](https://opensource.org/license/mit/))</li></ul>         |
| `.settings.json`                       | <ul><li>Remove `CODEOWNERS` from the `cSpell.words` property</li></ul>                                                                                         |

> [!NOTE]
> You can remove the `LICENSE`, `TERMS.md`, and `PRIVACY_POLICY.md` files if you
> are setting up a private repository. However, if you plan to publish your
> project under an open-source license later, it's recommended to keep them.

<p align="right">[<a href="#readme-top">back to top</a>]</p>

---

## Tools

This repository includes a set of tools and extensions that help maintain
consistency and quality across the codebase. Below is a brief overview of each
tool and its purpose:

### cSpell

`cSpell` ensures consistent and proper spelling across all files. You can add or
remove dictionaries based on your needs by modifying the `cspell.json`,
furthermore it lets you customize rules and ignored words. When you encounter
**project-specific terms**, be sure to add them to the `cSpell.words` property
in `.vscode/setting.json`, only add them to the `cspell.json` if they are used
in multiple projects, e.g. `nlobby4` or your username.

### EditorConfig

The `.editorconfig` file provides consistent coding styles between different
editors and IDEs. It’s a minimal but essential configuration that standardizes indentation,
line endings, character sets, and other formatting details. **Do not** modify
this file unless you have a specific formatting policy that applies to your entire
team or path.

### AutoChangelog

TODO: TODO: TODO: TODO:

### Codecov

TODO: TODO: TODO: TODO:

### Markdownlint

TODO: TODO: TODO: TODO:

### Markdown All in One

TODO: TODO: TODO: TODO:

### Notebooks

TODO: TODO: TODO: TODO:

### Dev Containers

TODO: TODO: TODO: TODO:

### GitHub CodeSpaces

TODO: TODO: TODO: TODO:

### GitHub Actions

TODO: TODO: TODO: TODO:

### CodeQL

TODO: TODO: TODO: TODO:

### Snyk Security

TODO: TODO: TODO: TODO:

### GitLens

TODO: TODO: TODO: TODO:

### GitHub Pull Requests

TODO: TODO: TODO: TODO:

### Templates

### draw\.io

You can include visual documentation or diagrams in your project using `.drawio`
files. These diagrams are especially useful for architectural overviews,
workflows, or data models. You can place them anywhere in your project by simply
creating a file like `diagram-name.drawio`.

<p align="right">[<a href="#readme-top">back to top</a>]</p>

---

<!-- ? ############################################# -->
<!-- ? Footer -->
<!-- TODO: Add images of used libraries or other used resources here -->
<!-- TODO: The images have to link the documentation or the information source -->
<!-- TODO: Images have to be contained in the .meta folder or provided via URL -->
<!-- TODO: The nlobby4 badge is example only, you can remove it -->
<!-- markdownlint-disable MD013 -->

<a href="https://github.com/nlobby4" style="text-decoration: none;">
  <img src="https://raw.githubusercontent.com/nlobby4/.organization/refs/heads/main/Logos/.current.png" height="40" alt="nlobby4 logo" />
</a>

<img align="right" src="./.meta/art-footer.svg" alt="art-footer">

<!-- markdownlint-enable MD013 -->
<!-- ? ############################################# -->
<!-- ? References -->
<!-- TODO: Add links to external resources here if needed -->
