

Had to install below for windows:

1. Github for windows via powershell
  - install ssh for windows via powershell
  - setup ssh keys (one for lipi's github account, one for shantanu's wnc account)
  - add public keys to respective github accounts.
  - setup local github config credentials in repective github repo folder created (D://Lipi/wnc-mess-terraform was configured)
    - git config user.name "Lipi Lapsiwala"
    - git config user.email "lipi.lapsiwala@gmail.com"
    - if this needs to be configured globally, --global flat would be used in the command above. 
    - But that will work only with one github account
  - connected local folder wnc-mess-terraform to remote repo wnc-mess-terraform
2. Latest VSCode version was installed from microsoft store.
3. Install wsl via microsoft store
4. Install Install the WSL 2 kernel update manually
  - Go to this official link: 👉 https://aka.ms/wsl2kernel
  - It will redirect you to the Microsoft download page.
  - Download the .msi file named WSL2 Linux kernel update package for x64 machines.
  - Run the installer — it takes just 30 seconds.
5. Ubuntu 24.04.1 LTS was installed from microsoft store
6. Ubuntu 24.04.1 was set as a default terminal in VS Code.
7. tfenv was installed in ubuntu.
  - sudo apt update
  - sudo apt install unzip
  - git clone https://github.com/tfutils/tfenv.git ~/.tfenv
  - echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bashrc
  - source ~/.bashrc
  - tfenv --version
  - tfenv install 1.6.6 (1.6.6 is the last stable version with all features. 1.7 to 10 are used by hashicorp. 1.11.3 is too latest and might not support all features)
  - tfenv use 1.6.6
  - terraform --version
8. Install Azure CLI in ubuntu
  - curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
  - az version
  - login to az: `az login --use-device-code`
    - open `https://microsoft.com/devicelogin` in browser
    - enter code shown as an output of `az login` command.
    - select an azure account to login to.
    - go back to ubuntu terminal
    - select appropriate subscription.
9. Created a free account on Terraform cloud for backend. 
  - created an organization: wnc-mess-terraform-backend
  - created a project: wnc-mess (Not useful in terraform configuration. This is for user's understanding)
  - Created a workspace: wnc-mess-terraform-backend
  - Used this URL as a reference to add environment variables in Terraform cloud workspace: https://developer.hashicorp.com/terraform/tutorials/azure-get-started/azure-remote
  - Was giving some path error after using cloud as a backend for azure. Replaced cloud with a proper terraform {backend {} }. block.
  - updated terraform version to ~> 1.6.0 under workspace settings -> General -> Terraform version. It was 1.11.3 before. 



