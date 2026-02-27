# Invoke-BigBlackAD 🖤

<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/7e2a94bd-3863-4e42-b977-a6019ae6f368" />


> *"When your pentest hits a wall, there's only one man for the job."*

![PowerShell](https://img.shields.io/badge/PowerShell-3.0%2B-blue?style=for-the-badge&logo=powershell)
![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey?style=for-the-badge&logo=windows)
![Version](https://img.shields.io/badge/Version-9.0-orange?style=for-the-badge)
![AD](https://img.shields.io/badge/Active%20Directory-Owned-red?style=for-the-badge)
![Summon](https://img.shields.io/badge/Big%20Black-Summoned-success?style=for-the-badge)

---

## 🧙 What is this?

`Invoke-BigBlackAD` is an Active Directory enumeration and security assessment toolkit. Deploy it immediately when:

- BloodHound is confused 🐕
- SharpHound is crying 😭
- PowerView is shaking 😰
- You have no idea what you're doing 💀
- The Domain Admin is escaping 🏃

This tool solves **all** of the above by **summoning Big Black** — the legendary AD whisperer who will have you owning that domain in no time.

---

## ⚡ Quick Start

**One-liner (IEX method):**
```powershell
IEX (iwr 'https://raw.githubusercontent.com/Sabastiaz/Invoke-BigBlackAD/main/Invoke-BigBlackAD.ps1' -UseBasicParsing)
```

**Clone and run locally:**
```powershell
git clone https://github.com/Sabastiaz/Invoke-BigBlackAD.git
cd Invoke-BigBlackAD
Import-Module .\Invoke-BigBlackAD.ps1

Invoke-BigBlackAD                   # basic enumeration
Invoke-BigBlackAD -FullEnumeration  # full enumeration (shares, groups, ACLs, BloodHound, etc.)
```

---

## 🖥️ Expected Output

```
    ____  _         ____  _            _
 | __ )(_) __ _  | __ )| | __ _  ___| | __
 |  _ \| |/ _' | |  _ \| |/ _' |/ __| |/ /
 | |_) | | (_| | | |_) | | (_| | (__|   <
 |____/|_|\__, | |____/|_|\__,_|\___|_|\_\
           |___/
                    >> A D  W H I S P E R E R <<
[*] Initializing Advanced AD Enumeration Toolkit...
[*] Starting Big Black AD Enumeration...
[*] Target Domain: wowza.local
[*] Current User: Administrator
[*] Checking Active Directory Module...
[+] Active Directory Module loaded successfully
[*] Enumerating Domain Information...
[+] Domain: wowza.local
[+] Forest: wowza.local
[+] Domain Controllers: 1

Name                           Value
----                           -----
DomainMode                     Unknown
SchemaMaster                   dc01.wowza.local
ForestName                     wowza.local
DomainControllers              dc01.wowza.local
ForestMode                     Unknown
DomainName                     wowza.local
PDC                            dc01.wowza.local
```

---

## 📋 Requirements

| Requirement  | Detail               |
|:-------------|:---------------------|
| PowerShell   | 3.0+                 |
| OS           | Windows only         |
| Big Black    | Available on Facebook |
| Desperation  | Maximum              |

---

## ⚙️ Parameters

| Parameter              | Type         | Default             | Description                                        |
|:-----------------------|:-------------|:--------------------|:---------------------------------------------------|
| `-FullEnumeration`     | Switch       | `$false`            | Run all enumeration modules                        |
| `-Mode`                | String       | `Audit`             | `Lab` or `Audit` — controls tooling and noise level |
| `-DomainController`    | String       | *(auto-detected)*   | Target domain controller hostname or IP            |
| `-Credential`          | PSCredential | *(current user)*    | Alternate credentials for enumeration              |
| `-OutputPath`          | String       | `.\AD_Enum_Results` | Directory where all output files are saved         |
| `-EnableOptionalTools` | Switch       | `$false`            | Load optional tools (e.g. PowerView) in any mode   |
| `-ToolsPath`           | String       | `.\Tools`           | Path to directory containing optional tool scripts |

---

## 🛠️ Features

### 1️⃣ Core AD Enumeration
- Domain info — name, forest, DCs, PDC, schema master
- User enumeration with UAC flag analysis (disabled, locked, no-password, never-expires)
- AS-REP Roastable account detection
- Kerberoastable account detection (SPN enumeration)
- Privileged group membership analysis (Domain Admins, Enterprise Admins, etc.)
- Network share enumeration against the PDC
- Unconstrained delegation detection
- AdminSDHolder ACL inspection

### 2️⃣ BloodHound Integration
- Auto-detects SharpHound (`.\SharpHound.exe`, `.\SharpHound.ps1`, `C:\Tools\SharpHound.exe`)
- Configurable collection scope: `Default` / `All` / `DCOnly`
- Falls back to manual CSV export (`Get-ADUser`, `Get-ADComputer`, `Get-ADGroup`) if SharpHound is absent
- Output prefixed and saved to `<OutputPath>\`

### 3️⃣ AD Recycle Bin Inspector *(Read-Only)*
- Lists deleted AD objects via `Restore-DeletedADObject`
- Filterable by name (`-SearchName`), configurable result limit (`-MaxResults`)

### 4️⃣ Token & Privilege Analyzer
- Captures `whoami /priv`, `whoami /all`, `whoami /groups`, `whoami /user`
- Detects integrity level: Low / Medium / MediumPlus / High / System
- Flags high-interest enabled privileges:
  `SeImpersonatePrivilege`, `SeDebugPrivilege`, `SeBackupPrivilege`,
  `SeRestorePrivilege`, `SeTakeOwnershipPrivilege`, `SeLoadDriverPrivilege`, and more
- Reads UAC and LSA registry posture (read-only, no changes made)
- Exports parsed privilege CSV + JSON summary to `<OutputPath>\HostContext\`

### 5️⃣ Reporting
- Generates `<OutputPath>\SummaryReport.txt` listing all collected data files
- All enumeration data exported as CSV / XML

### 6️⃣ Modes

| Mode | Flag | Behaviour |
|:-----|:-----|:----------|
| **Audit** *(default)* | `-Mode Audit` | Conservative, DCOnly BloodHound collection, lower noise |
| **Lab** | `-Mode Lab` | Loads optional tools (PowerView if found), full BloodHound collection, opens Facebook at completion |

### 7️⃣ OPSEC
- No automatic tool downloads — optional scripts must be placed locally under `.\Tools\`
- PowerView is only loaded in `Lab` mode or when `-EnableOptionalTools` is specified
- Share enumeration targets only the PDC (fast mode) to reduce domain-wide noise

---

## 🤝 The Man, The Myth, The Legend

When your team is lost in the forest of Group Policy Objects and can't find the path to Domain Admin, **Big Black** appears.

📬 **Contact Big Black directly:**
👉 [facebook.com/sabastian.fhantomhive](https://www.facebook.com/sabastian.fhantomhive)

Tell him: *"I need AD help. Chicken0248 sent me."*

---

## ⚠️ Disclaimer

This tool is an **inside joke** created for our pentesting team. The first version of this tool does not perform any actual Active Directory enumeration, exploitation, or reconnaissance. Any resemblance to a real security tool is purely for comedic effect.

Please do not use this on client engagements. Unless the client asks why you're opening Facebook mid-pentest. Then it's their fault.

---

## 📜 License

Do whatever you want with this. Big Black approves.

---

<p align="center">
  <i>Built with ❤️ and desperation by the team<br>
  Powered by Big Black's infinite AD wisdom</i>
</p>
