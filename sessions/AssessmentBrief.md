# Assessment Task 

(Note that this is provided for guidance. You must look at the full assessment document on SOL)

## Case study

Your customer, The Sirius Cybernetics Corporation*, is seeking to rapidly expand its operations by opening a number of regional offices linked back to a data centre in the head office. 
This is to allow its profitable complaints department to be closer to its growing body of regionally distributed disgruntled customers. 
In order to facilitate this rapid expansion, Sirius have commission you to recommend how they will automate the provisioning of their network including their core and edge compute facilities. 

Presently the core data centre hosts 20 servers in four racks with suitable top of rack switching and Uninterruptible Power Supplies (UPS) in each rack. 
The company expect to add a new regional office every week until every major town in the UK has an office. 
Each regional office will include a computer room with a rack containing a UPS, two proxy servers and any necessary network switching. 
These servers will connect to up to 20 hot desk PC stations in the regional office and back to the main data centre using a software VPN. 

It is expected that each additional regional office will also require an expansion of 2 extra servers in the core date centre. 
At the present time, the customer is not considering using cloud services but will self-host all of their own critical infrastructure.
 
Sirius Cybernetics require you to consider broadly how their systems will be provisioned and managed and, most importantly, how they will automate this rapid expansion with minimal staff involvement. 

Your recommendations to the customer should be presented in a well formatted report, having Harvard formatted references and a series of appendices.

## Approach

During the class sessions, you will be introduced to technologies which might be used to deliver a workable solution. 
In your report, you are to summarise the technical requirements, describe the overall architecture of your proposed solution and reference various proofs of concept that practically demonstrate how your solution could be made to work. 
The proofs of concept should be documented as appendices to the main report and also documented as working infrastructure configurations on Github.

The solution should:
* Demonstrate the use of an 'Infrastructure as code' paradigm for automating configuration using minimal staff intervention.
* Cover DNS DHCP Firewall and VPN solutions
* Include a monitoring solution.
* Automate bare metal provisioning using PXE boot. 
* The company's software should be deployable using industry standard orchestration mechanisms using standard Linux packages on dedicated hardware 
* The software should also be deployable as virtualised and / or containerised applications.
* The configuration for these applications should be automatically updated from a centralised Git repository.
* The configuration of the network, VPN and firewalls should also be automated.
* The solution should demonstrate a 'zero trust' security posture using SSH keys to control access between components.
* Administrators should also use personal SSH keys to access core systems.
* Centralised user authentication and permission management should also be considered for the solution (stretch goal).

* NOTE: The Sirius Cybernetics Corporation is a fictional, disastrously inept manufacturing company from Douglas Adams' The Hitchhiker's Guide to the Galaxy series. Their products are infamous for fundamental design flaws hidden completely by superficial design flaws. It is very easy to be blinded to the essential uselessness of them by the sense of achievement you appreciate from getting them to work at all.


