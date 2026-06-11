# Lab 01: User Lifecycle Management

## Scenario
A new SOC Analyst joins the company but IT fails to provision access properly. Meanwhile a terminated employee still has an active account 3 months after leaving, posing a serious security risk.

## Objective
Simulate end-to-end user lifecycle management including bulk provisioning, group assignments, and secure offboarding using Microsoft Entra ID and Microsoft Graph PowerShell.

## Tools Used
- Microsoft Entra ID
- Microsoft Graph PowerShell SDK v2.37.0
- Microsoft 365 Admin Center

## Environment
- 50 test users created across 10 departments and 25+ US states
- 6 security groups aligned to job functions
- Tenant: Microsoft 365 Free Trial

## What I Did

### Bulk User Provisioning
- Created 50 realistic users via PowerShell script using Microsoft Graph API
- Each user includes: Display Name, Job Title, Department, Employee ID, Street Address, City, State, Zip Code, and Phone Number
- Users span departments including Security Operations, IAM, GRC, IT, Engineering, Finance, and HR

### Security Group Management
- Created 6 security groups aligned to job functions
- SOC-Team, IAM-Team, GRC-Team, IT-Operations, Engineering-Team, Finance-HR
- Assigned all 50 users to correct groups based on department

### User Deprovisioning (Terminated Employee - Jordan Mills)
- Blocked sign-in immediately via Microsoft 365 Admin Center
- Revoked all active sessions via Entra ID
- Removed from IT-Operations security group
- Account preserved for 30-day hold per offboarding policy

## Key PowerShell Commands Used
- Connect-MgGraph
- New-MgUser -BodyParameter
- Update-MgUser
- Get-MgUser
- New-MgGroup
- Add-MgGroupMember
- Remove-MgUser

## Outcome
- 50 users provisioned with full identity attributes across 25+ states
- 6 security groups created with correct membership
- Terminated employee blocked, sessions revoked, and access removed within minutes
- Demonstrated least privilege and proper offboarding procedures

## Screenshots
See /screenshots folder for evidence of each step
