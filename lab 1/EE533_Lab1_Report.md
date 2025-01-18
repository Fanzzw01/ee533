# EE533_Lab1_Report

* Sorry my **Windows License** on my laptop is **ONLY** support for **Chinese** as the **Default System Language**, so in my report screenshot there might be some Chinese shown in the pictures.

## 1. Setting up two virtual machine nodes on VMWare

### 1.1 Download and Install VMWare

* Download and Install VMWare Workstation Pro 17.5.2

![Screenshot 2025-01-17 172909](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-17 172909.png)

![Screenshot 2025-01-17 173050](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-17 173050.png)

![Screenshot 2025-01-17 173524](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-17 173524.png)

* Download the Linux ISO

![Screenshot 2025-01-17 170654](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-17 170654.png)

### 1.2 Create two Linux VMs in VMWare

![Screenshot 2025-01-17 173846](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-17 173846.png)

![Screenshot 2025-01-17 175151](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-17 175151.png)

![Screenshot 2025-01-17 175252](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-17 175252.png)

### 1.3 Installing Ubuntu in VMs

![Screenshot 2025-01-17 175936](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-17 175936.png)

![Screenshot 2025-01-17 182940](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-17 182940.png)

![Screenshot 2025-01-17 185505](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-17 185505.png)

### 1.4 Setup and Configure Network between two VMs

* Add VMnet2 and check the IP Address
  * VMnet2: 192.168.22.0
  * Mask: 255.255.255.0

![Screenshot 2025-01-17 191144](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-17 191144.png)

* Check the IP Address on Client and Server, and ping Client from the server
  * Server and Client are all in the VMnet2 network
  * Server IP address: 192.168.22.128
  * Client IP address: 192.168.22.129

![Screenshot 2025-01-17 192302](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-17 192302.png)

![Screenshot 2025-01-17 192255](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-17 192255.png)

* From the above pic, ping Client VM from Server VM is successful, so the Virtual Network is setup successfully under VMnet2

## 2. Communication Between Server and Client with Sockets
