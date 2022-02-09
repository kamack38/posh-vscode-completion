# 🚧 THIS REPO IS UNDER CONSTRUCTION 🚧

Of course any PRs are welcome

# posh-vcode-completion

[![PowerShell Gallery](https://img.shields.io/powershellgallery/v/vscode-completion.svg?style=flat-square)](https://www.powershellgallery.com/packages/vscode-completion/)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/dt/vscode-completion.svg?style=flat-square)](https://www.powershellgallery.com/packages/vscode-completion/)

A [VSCode](https://github.com/microsoft/vscode) tab completion for [PowerShell](https://github.com/PowerShell/PowerShell).

## ⚙️ Installation

Install from [PowerShell Gallery](https://www.powershellgallery.com/)

```powershell
Install-Module vscode-completion -Scope CurrentUser
```

---

⚠️ If you haven't allowed script execution policy, set your script execution policy to `RemoteSigned` or `Unrestricted`.

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## 🛂 Usage

You have to import the module to use `vscode-completion`.

Add below command into your PowerShell profile.

```powershell
Import-Module vscode-completion
```

Then restart your PowerShell.  
Now you can use tab completion with **code**.

---

⚠️ If you don't have PowerShell profile yet, create it with below command!

```powershell
New-Item -ItemType File $profile
```

## Credits

Created using [gluons's](https://github.com/gluons) [yarn-completion](https://github.com/PowerShell-Completion/yarn-completion/)
