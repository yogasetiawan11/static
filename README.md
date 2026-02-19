## Setting Up the Netflix Clone Application

Follow these steps to set up and run the Netflix clone application on your local machine:

### 1. Update Package List

Run the following commands to update the package list on your system:

```bash
sudo apt update
```

### 2. Install Required Packages

Install the necessary packages and dependencies for the application using the following command:

```bash
sudo apt install -y curl dirmngr apt-transport-https lsb-release ca-certificates
```

### 3. Install Node.js

Install Node.js, a JavaScript runtime, with the following commands:

```bash
# Download and install n and Node.js:
curl -fsSL https://raw.githubusercontent.com/mklement0/n-install/stable/bin/n-install | bash -s 18
# Node.js already installs during n-install, but you can also install it manually:
#   n install 18
# Verify the Node.js version:
node -v # Should print "v18.20.8".
# Verify npm version:
npm -v # Should print "10.8.2".

```

### 4. Install Project Dependencies

Navigate to the project directory and install the project-specific dependencies:

```bash
npm install
```

### 5. Start the Application:

To start the Netflix clone application, use the following command:

```bash
npm start &
```

Now you should be able to access the Netflix clone application by opening your web browser and navigating to `http://localhost:3000`.

Enjoy exploring the Netflix clone!

