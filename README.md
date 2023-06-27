# MCSMS (Minecraft Sync My Server)

MCSMS (Minecraft Sync My Server) is a program that allows you to create a localhost Minecraft server that can be easily synchronized using GitHub. With MCSMS, each user becomes the owner of their own server, and the code is automatically synced on startup. This README file provides instructions on how to set up and run the MCSMS program.

## Features

- Automatic code synchronization using GitHub
- Built-in Java and Git, eliminating the need for additional installations
- Ability to create and manage a personal Minecraft server


# NOTICE
**This code does not yet have a auto config .env file yet so you have to have git working**
## Prerequisites

Before running the MCSMS program, make sure you have the following prerequisites in place 




1. **GitHub Account**: Ensure that you have a GitHub account set up and ready to use with Git. If you don't have an account, you can create one at [GitHub](https://github.com).

2. **Java Unzipping**: Unzip the `backend\java-portable\jdk-20.0.1\lib\modules.zip` file. This can be done by following these steps:
    - Locate the `backend\java-portable` directory in the MCSMS program files.
    - Inside the `java-portable` directory, find the `jdk-20.0.1` directory.
    - Within the `jdk-20.0.1` directory, you will find the `lib` folder. Inside the `lib` folder, locate the `modules.zip` file.
    - Extract the contents of the `modules.zip` file into the same `lib` folder, replacing the `modules.zip` file.

3. **EULA Acceptance**: Before running the server for the first time, you need to accept the Minecraft End User License Agreement (EULA). Instructions on how to accept the EULA can be found in the `eula.txt` file.

## Getting Started

Follow these steps to set up and run MCSMS:

1. Clone or download the MCSMS repository to your local machine.

2. Navigate to the downloaded MCSMS directory.

3. Unzip the `backend\java-portable\jdk-20.0.1\lib\modules.zip` file as explained in the prerequisites section.

4. Accept the Minecraft End User License Agreement (EULA) by following the instructions in the `eula.txt` file.

5. Ensure you have a configured GitHub account with Git installed. If not, please refer to the GitHub documentation for account setup and installation.

6. Run the `StartServer.bat` file. This will start the MCSMS program and initiate the synchronization process with GitHub.

Congratulations! Your MCSMS Minecraft server is now running. You can access it locally by connecting to `localhost` using the Minecraft Java Edition client.

## Frequently Asked Questions (FAQ)

**Q: Can I use MCSMS on operating systems other than Windows?**
A: Currently, MCSMS is only compatible with Windows operating systems. Support for other operating systems may be added in future updates.

**Q: How do I configure GitHub for use with MCSMS?**
A: To configure GitHub for use with MCSMS, follow these steps:
   1. Create a new repository on GitHub.
   2. Clone the repository to your local machine.
   3. Copy the contents of your Minecraft server into the cloned repository.
   4. Commit and push the changes to GitHub.
   5. The next time you run MCSMS, it will automatically sync with the GitHub repository.

**Q: How can I contribute to MCSMS development?**
A: If you're interested in contributing to MCSMS, feel free to fork the repository, make your changes, and submit a pull request. I appreciate any contributions and feedback from the community.

## License

MCSMS is licensed under

 the [MIT License](LICENSE). Please review the license file for more information.

---

Thank you for using MCSMS! If you have any further questions or encounter any issues, please don't hesitate to [open an issue](https://github.com/Wazeback/MCSMS/issues) on the GitHub repository. I hope you enjoy using MCSMS and have a great Minecraft server experience!
