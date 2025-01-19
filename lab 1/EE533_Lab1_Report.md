# EE533_Lab1_Report

* My **Windows License** on my laptop **ONLY** supports for **Chinese** as the **Default System Language**, so in my report screenshot there might be some Chinese text shown in the pictures. Sorry about that...

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

* I downloaded and installed Virtual Studio Code as IDE, and I installed git to pull the given sample code for testing.

![Screenshot 2025-01-17 185505](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-17 185505.png)

### 1.4 Setup and Configure Network between two VMs

* Add VMnet2 and check the IP Address
  * VMnet2 IP address: 192.168.22.0
  * Mask: 255.255.255.0

![Screenshot 2025-01-17 191144](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-17 191144.png)

* Check the IP Address on Client and Server, and ping Server from the Client
  * Server and Client are all in the VMnet2 network
  * Server IP address: 192.168.22.129
  * Client IP address: 192.168.22.128

![Screenshot 2025-01-18 163518](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-18 163518.png)

![Screenshot 2025-01-18 163525](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-18 163525.png)

* From the below pic, ping Server VM from Client VM is successful, so the Virtual Network is setup successfully under VMnet2

![Screenshot 2025-01-18 163715](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-18 163715.png)

## 2. Communication Between Server and Client with Sockets

### 2.1 Initial and Setup Server

![Screenshot 2025-01-18 163838](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-18 163838.png)

* I choose port: 8080 as the socket using port
* Run `./server 8080` and wait for listening any client to connect

### 2.2 Setup Client and connect to Server

* From **Part 1.4** and **Part 2.1**, we known that the Server's IP address is 192.168.22.129, and the socket port number is 8080
  * So I run `./client 192.168.22.129 8080` to connect with the Server
  * From the printed message, we know that there is no ERROR msg, so connecting to the Server is successful.

![Screenshot 2025-01-18 163935](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-18 163935.png)

### 2.2 Enter the message in the Client and send to the Server

* I entered the message like this:
  * Hi, I'm Haoran Fan, nice to meet you! Have a good day!

![Screenshot 2025-01-18 164000](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-18 164000.png)

* After pressing ENTER, there is a return message on Client's terminal window which sent from the Server:
  * I got your message

![Screenshot 2025-01-18 164008](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-18 164008.png)

* On the Server, this message is printed in terminal window correctly:
  * Here is the message: Hi I'm Haoran Fan, nice to meet you! Have a good day!

![Screenshot 2025-01-18 164015](C:\Users\StepF\Documents\GitHub\ee533\lab 1\Pic\Screenshot 2025-01-18 164015.png)

## 3. Conclusion

* In this lab, two VMs were created named Server and Client, and they were connected into the same virtual network VNnet2 with IP Address 192.168.22.0 and mask 255.255.255.0.
* The Server's IP address was set as 192.168.22.129, and the Client's IP address was set as 192.168.22.128.
* The socket program was complied in these two VMs, and the socket was tested by sending message from VM Client to VM Server.
* The testing socket port on Server was chosen as 8080.
* After checking the return message in these two VMs' terminal window, the two VMs and the virtual network was successfully setup, and the Client successfully connected and sent the message to the Server by socket.

## 4. GitHub link

* For this lab, the commit history and process details can be viewed under the link:
  * https://github.com/Fanzzw01/ee533.git
