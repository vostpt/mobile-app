# Contributing

Everyone is welcome to contribute to the VOST application, including adding new screens, fixing current issues or suggesting enhancements.

To do so, please read the following sections:
- [Opening an Issue](#opening-an-issue)
- [Creating A Pull Request](#creating-a-pull-request)
- [Style Guide](#style-guide)

# Opening an Issue
## New Feature/Feature Request
A new feature should have the `enhanchement` label, with a title describing the new feature (“Add new endpoints for VOST - gas stations”).

If the feature is an UI improvement or a new screen, please provide a wireframe of the screen, which can be made with apps such as [MockFlow WireframePro - Editor](https://wireframepro.mockflow.com/editor.jsp?editor=on&bgcolor=white&perm=Create&ptitle=Warranty%20Example&store=yes&category=M270f5278938129256fdb714d2bdd36cf1550137767039&projectid=Ma33dc569ed488dd5d67216b46ee7e0d71554926933286&publicid=aea96dad4cfb471b95fff6b1b2326b23&redirect=yes#/page/ab44169772fb4b4ca6a5e81f02d80e33).

The issue message should explain what the feature is going to change in the app and possible conflicts (“The new endpoints will change the list item in the Home Screen”).

## Issue or Bug
When filing a bug, please follow the [Github Issue Template Guideline](https://gist.github.com/auremoser/72803ba969d0e61ff070#file-issue_template-md)

# Creating a Pull Request
When creating a Pull Request, please make sure your code follows the [Style Guide](#style-guide). 

This project follows the [GitFlow](https://datasift.github.io/gitflow/IntroducingGitFlow.html) structure in the git tree, so when creating a new feature or fixing an issue, please create the appropriate branch in the `development` branch. When your feature is finished, merge it back into `development` and create your pull request.

Additionally, each commit message must follow this set of rules:
- Reference the issue that you are fixing/adding as a feature
- Explain what the commit does (“Fixes issue #1), “Adds a button to the bottom bar for ‘Home’”)
- Use the present tense (“Add feature” not “Added feature”)
- Use the imperative mood (“Move cursor to…” not “Moves cursor to…”)

# Style Guide
When creating a pull-request to the VOST repo, you must:
- Format the code with  `dartfmt`
- Comment any added Functions and Methods according to the [Official Dart Recommendations](https://www.dartlang.org/guides/language/effective-dart/documentation) for commenting code.
