# Scenario & Problem Domain

> GlobeX has made a number of strategic acquisitions this year, but the IT infrastructure of the new subsidiary companies is outdated. In order to maintain the levels of regulatory compliance required for federal contracts, GlobeX needs to update and reconfigure its subsidiary's IT infrastructure. For each acquisition, a task force has been assembled under the umbrella of the GlobeX special projects division to accomplish this project.
> 
> Your team has been assigned to assist with standardizing IT infrastructure for one of the newly-acquired subsidiaries. Your instructor will play the role of operations manager at the subsidiary, who will guide you through the process via email.

# Assignments & Deliverables

- Daily project report assignments on canvas.
- Project prep assignments located on GitHub.
- By demo day we need:
  - Slide deck
  - Project report
  - Project plan
  - GitHub repo
  - Google drive docs
- Track individual contributions in a writeup for demo day.

# Standup

During standup, we will each address three points:
1. What we accomplished individually yesterday
1. What you plan to accomplish individually today
1. Any blockers we've encountered.

# Presentation Prep

Deck guidelines:
- Must use aesthetic formatting of [this deck](https://docs.google.com/presentation/d/1NeXKKEpjK2DDme8EwlZBsJndUqIgGYzWrY6FAYtNTf0/edit#slide=id.g2accd1c413_3_31)
- Presentation cannot be more than 25 minutes long including questions
- Present from our docs
- Get personal pitches down for introductions

Everyone has to speak

Presentation requirements:
1. team member introductions
  - interesting/fun personal fact
  - career ambitions
2. topical overview
  - Describe problem domain
  - What are our solutions, why are our solutions?
  - before & after network topologies
    - network type
    - design philosophy
    - remote acess considerations
3. Improvements made to infrastructure to accomodate employees & site-to-site connectivity
  - implementation of VPN
  - network access controls system
    - how do we achieve AAA network security management?
4. Script that automates DC deployment
  - Presentation of scenario org char
  - Script should be able to demonstrate
    - Assign windows server VM a static IPv4 address
    - Assign the windows server VM a DNS
    - Renames the windows server VM
    - Installs AD-Domain-Services
    - Creates an AD Forest
    - Creates OUs
    - Takes a CSV file of users and creates AD users and adds them to appropriate OUs
5. Final thoughts on how the project went
  - Approach to planning and communication
  - Highlight obstacles and how they were overcome
  - A portion each team member is proud of
6. Q&A

Keep it classy, business casual.

## Deliverables

Repo should contain a single Project Report, either a google doc or a markdown file.

List of requirements from GlobeX VP of Special Projects for project report:

1. Network design
  - Network topology diagram of systems architecture design
  - All components must be labeled, network diagram must be presentable, free of defects/issues
  - Explain and justify diagram in detail. Devices hosting network services (DHCP, DNS, etc.) must be clearly indicated.
2. How core network services will be administered
  - Network config details:
    - DHCP range
    - Subnet mask
    - IP addresses of all devices clearly indicated on network diagram
3. How will OS version control be handled?
  - How will we handle OS version control centrally? [hint from instructors](https://docs.microsoft.com/en-us/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus)
4. PDF of project slides