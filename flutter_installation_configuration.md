# Flutter Development Environment Setup

## 1. Installation and Configuration of Git and Visual Studio Code for Flutter Development

### Aim
To install and configure **Git and Visual Studio Code** for Flutter application development.

### Step 1: Install Git

1. Open a web browser and visit the official Git website.
2. Download the Git installer suitable for your operating system.
3. Run the installer.
4. Follow the installation wizard and keep the default options unless specific configuration is required.
5. Complete the installation.

### Step 2: Verify Git Installation

Open **Terminal / Command Prompt** and execute:

```bash
git --version
```

If Git is installed correctly, its version number will be displayed.

Example:

```text
git version 2.x.x
```

### Step 3: Configure Git

Set the username:

```bash
git config --global user.name "Your Name"
```

Set the email:

```bash
git config --global user.email "your@email.com"
```

Verify the configuration:

```bash
git config --global --list
```

### Step 4: Install Visual Studio Code

1. Visit the official Visual Studio Code website.
2. Download **Visual Studio Code** for your operating system.
3. Install VS Code using the installer.
4. Launch Visual Studio Code after installation.

### Step 5: Install Flutter Extension in VS Code

This is the **simple method commonly used in the lab**.

1. Open **Visual Studio Code**.
2. Open the **Extensions** panel.
3. Search for:

```text
Flutter
```

4. Install the official **Flutter** extension.
5. The **Dart** extension is also installed/enabled as a dependency of the Flutter extension.

> **Important:** The VS Code extension provides Flutter/Dart development support, but **the extension itself is not the Flutter SDK**. The SDK still needs to be available/configured unless VS Code's Flutter tooling is being used to obtain/configure it.

### Step 6: Create a Flutter Project

After Flutter is properly configured:

1. Open VS Code.
2. Press:

```text
Ctrl + Shift + P
```

3. Search for:

```text
Flutter: New Project
```

4. Select **Application**.
5. Select the location where the project should be created.
6. Enter the project name.
7. VS Code creates the Flutter project.

The main Dart file is:

```text
lib/main.dart
```

### Result

Git and Visual Studio Code were successfully installed and configured for Flutter application development.

---

# 2. Installation and Configuration of Visual Studio and Flutter SDK

## Aim

To install and configure **Visual Studio and Flutter SDK** and verify the Flutter SDK setup.

> **Important:** Visual Studio and Visual Studio Code are different applications.  
> **Visual Studio** is Microsoft's full IDE, while **Visual Studio Code** is a lightweight code editor.

### Step 1: Install Visual Studio

1. Visit the official Microsoft Visual Studio website.
2. Download **Visual Studio Community** or the required edition.
3. Start the Visual Studio installer.
4. During installation, select the required workloads.

For Flutter development, Visual Studio is mainly important on **Windows when building Flutter desktop applications**, particularly because Flutter's Windows desktop tooling uses Visual Studio's C++ build tools.

5. Install the required components.
6. Restart the computer if required.

### Step 2: Download Flutter SDK — Traditional Method

This is the **traditional/manual method**.

1. Visit the official Flutter website.
2. Open the Flutter installation page.
3. Select your operating system.
4. Download the Flutter SDK.
5. Extract the downloaded Flutter SDK to a suitable location.

For example:

```text
C:\src\flutter
```

Avoid placing the SDK in a location requiring special permissions.

### Step 3: Add Flutter to PATH

On Windows:

1. Search for **Environment Variables**.
2. Open **Edit the system environment variables**.
3. Select **Environment Variables**.
4. Under the appropriate user/system variables, select **Path**.
5. Click **Edit**.
6. Add the Flutter `bin` directory.

Example:

```text
C:\src\flutter\bin
```

7. Click **OK** and close the dialogs.

#### Why is this required?

Adding Flutter's `bin` directory to PATH allows commands such as:

```bash
flutter
```

and

```bash
dart
```

to be executed from any terminal location.

### Step 4: Verify Flutter Installation

Open a **new terminal** and execute:

```bash
flutter --version
```

If Flutter is configured correctly, the installed Flutter version will be displayed.

### Step 5: Run Flutter Doctor

Execute:

```bash
flutter doctor
```

Flutter Doctor checks the development environment and reports whether the required tools are installed correctly.

For more detailed information:

```bash
flutter doctor -v
```

If an issue is reported, follow the instructions provided by `flutter doctor`.

### Step 6: Enable Required Flutter Desktop Support

If Windows desktop development is required, use:

```bash
flutter config --enable-windows-desktop
```

Then run:

```bash
flutter doctor
```

to verify the configuration.

### Result

Visual Studio and Flutter SDK were successfully installed and configured, and the Flutter environment was verified using:

```bash
flutter --version
```

and

```bash
flutter doctor
```

---

# 3. Installation and Configuration of Dart SDK and VS Code

## Aim

To install and configure the **Dart SDK and Visual Studio Code** and understand their role in Flutter application development.

### Step 1: Install Dart SDK

There are two ways to obtain Dart for Flutter development.

#### Method 1 — Through Flutter SDK

This is the **recommended method for Flutter development**.

The Flutter SDK includes the Dart SDK, so a separate Dart SDK installation is generally **not required**.

After installing Flutter, verify Dart using:

```bash
dart --version
```

You can also check:

```bash
flutter doctor
```

#### Method 2 — Install Dart SDK Separately

If a standalone Dart SDK is required:

1. Visit the official Dart website.
2. Select the installation instructions for your operating system.
3. Download/install the Dart SDK.
4. Add Dart's `bin` directory to PATH if required.
5. Open a new terminal.

Verify the installation:

```bash
dart --version
```

### Step 2: Install VS Code

1. Download Visual Studio Code from the official website.
2. Install it.
3. Open VS Code.

### Step 3: Install Dart Extension

1. Open the **Extensions** panel.
2. Search for:

```text
Dart
```

3. Install the official **Dart** extension.

The Dart extension provides features such as:

- Syntax highlighting
- Code completion
- Debugging
- Error detection
- Formatting
- Dart language support

### Step 4: Install Flutter Extension

1. Open the Extensions panel.
2. Search for:

```text
Flutter
```

3. Install the official Flutter extension.

It provides Flutter-specific development features such as:

- Flutter project creation
- Widget assistance
- Debugging
- Hot reload
- Flutter commands

### Step 5: Verify the Setup

Open the VS Code terminal and run:

```bash
flutter doctor
```

Also verify Dart:

```bash
dart --version
```

If the required components are correctly installed, the environment is ready for Flutter development.

---

# Role of Dart and VS Code in Flutter Development

### Dart

**Dart is the programming language used to develop Flutter applications.**

It is used to:

- Write Flutter application code
- Define widgets
- Implement application logic
- Manage state
- Handle user interactions

### Flutter SDK

**Flutter SDK provides the framework, tools, libraries, and Dart SDK required to develop Flutter applications.**

### VS Code

**VS Code is a code editor/IDE used to write, run, debug, and manage Flutter applications.**

It provides:

- Code editing
- IntelliSense/code completion
- Debugging
- Flutter and Dart extensions
- Hot reload
- Terminal access

### Git

**Git is a version control system** used to track changes in the project and manage different versions of source code.

---

# Important Lab Note: Two Ways to Install/Configure Flutter

There are essentially **two approaches you can mention in your practical record**.

## Method A — Traditional Flutter SDK Installation

```text
Flutter Website
       ↓
Download Flutter SDK
       ↓
Extract Flutter SDK
       ↓
Add flutter/bin to PATH
       ↓
Install VS Code
       ↓
Install Flutter + Dart extensions
       ↓
flutter doctor
       ↓
Ready for development
```

This is the **manual/traditional method** and is good to know for understanding the actual Flutter SDK setup.

## Method B — VS Code Flutter Extension Method

```text
Install VS Code
       ↓
Open Extensions
       ↓
Install Flutter Extension
       ↓
Flutter tooling prompts for SDK setup/download if needed
       ↓
Select/configure Flutter SDK
       ↓
flutter doctor
       ↓
Ready for development
```

This is the **easier lab method**.

### One correction to remember

Don't write:

> "Installing the Flutter extension installs Flutter."

That is not technically precise.

Instead, write:

> **"The Flutter extension provides Flutter development support in VS Code and can assist with obtaining/configuring the Flutter SDK."**

The **Flutter SDK** and the **Flutter VS Code extension** are two different things.

---

# Final Verification Commands

For your practical, these are the most important commands to remember:

```bash
git --version
```

Checks Git.

```bash
flutter --version
```

Checks Flutter.

```bash
dart --version
```

Checks Dart.

```bash
flutter doctor
```

Checks the complete Flutter development environment.

```bash
flutter doctor -v
```

Provides detailed diagnostic information.

---

# Short Viva Answers

### Q: What is Flutter?

Flutter is an open-source UI framework/toolkit by Google used to build applications for multiple platforms using a single codebase.

### Q: Which language does Flutter use?

Dart.

### Q: What is the Flutter SDK?

It contains the Flutter framework, Dart SDK, command-line tools, libraries, and other tools required for Flutter development.

### Q: Why do we use VS Code?

VS Code provides a convenient environment for writing, running, debugging, and managing Flutter applications.

### Q: Why do we use Git?

Git is used for version control and tracking changes in the source code.

### Q: How do you verify Flutter installation?

Using:

```bash
flutter doctor
```

### Q: Is a separate Dart SDK installation required for Flutter?

**No.** The Flutter SDK includes the Dart SDK, so a separate Dart installation is normally unnecessary for Flutter development.
