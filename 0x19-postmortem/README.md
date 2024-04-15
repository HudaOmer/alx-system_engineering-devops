# Postmortem: Authentication Service Outage - April 12-13, 2024

![load balancer meme](https://github.com/HudaOmer/alx-system_engineering-devops/blob/master/0x19-postmortem/Meme.jpg)

## Issue Summary
- **Duration:** April 12, 2024, 08:00 UTC to April 13, 2024, 02:00 UTC
- **Impact:** The authentication service experienced a complete outage, affecting 90% of users attempting to log in. Users were unable to access their accounts, resulting in frustration and service disruption.
- **Root Cause:** A misconfiguration in the load balancer settings led to an overload on the authentication service, causing it to crash.

## Timeline
- **08:00 UTC:** Issue detected through monitoring alerts indicating a spike in authentication service errors.
- **08:05 UTC:** Engineering team notified and investigation initiated.
- **08:20 UTC:** Initial assumption of database overload investigated, but ruled out after database performance analysis.
- **09:00 UTC:** Load balancer configuration checked, revealing misconfiguration causing uneven distribution of traffic.
- **09:30 UTC:** Incident escalated to senior engineering team for further assistance.
- **10:00 UTC:** Load balancer settings adjusted to evenly distribute traffic, restoring service partially.
- **11:30 UTC:** Authentication service restarted to clear any lingering issues.
- **12:00 UTC:** Service fully restored, but root cause analysis ongoing.

## Root Cause and Resolution
- **Root Cause:** Misconfigured load balancer led to uneven traffic distribution, overwhelming the authentication service.
- **Resolution:** Load balancer settings were adjusted to evenly distribute traffic, and the authentication service was restarted to clear any lingering issues.

## Corrective and Preventative Measures
- **Improvements/Fixes:**
  1. Implement automated load balancer health checks to detect misconfigurations.
  2. Enhance monitoring capabilities to proactively identify service degradation.
  3. Conduct regular load testing to ensure system scalability.
- **Tasks:**
  1. Implement automated load balancer configuration checks - assign to engineering team by April 20, 2024.
  2. Enhance monitoring system to include load balancer metrics - assign to DevOps team by April 25, 2024.
  3. Schedule quarterly load testing exercises - assign to QA team by May 1, 2024.
