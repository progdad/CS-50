# Basics of the Internet

## **Switches, Local Area Networks (LANs), Routers and The Internet**

- A **switch** is a device used for computers to communicate with each other in the same environment. 
- **The same environment** refers to a local area such as an office, a single building, or an area where computers are relatively close.

### **Connecting Computers through Switches**

- For computers to communicate through a **switch**, cables are used, such as **coaxial cables CAT-5, CAT-6**, or, in some cases, fiber optic cables for faster connections. 
- When **computers** are connected to a **switch**, they form a network known as a **LAN (Local Area Network)**.

### **LAN Ports and Switch Ports**

- **Cables are plugged into physical ports** on both devices/computers and the switch. The ports are called **LAN ports**.
- A **port** is just a physical connection point through which an external device can be linked to the computer. 

### **Access Point Device**

- An alternative way to connect computers in the same environment is to use an **Access Point Device**, which is based on wireless technology. Devices connected to an AP(access point) create **WLAN(Wireless LAN)**.

### **WLAN/LAN Communication**

- **For communication, devices in a WLAN/LAN send data to the switch**. **The switch**, aware of the port to which each device is connected, **decides where to route this data further**.
- **Data sent over computer networks**, such as the Internet, or in our case simply a **LAN**, is **divided into packets**. A **packet** is a **small segment** of a **larger message**, that consists of data(part of the the message) and meta-data(provides information such as the origin of the data, its meaning, its location, its destination, etc). 

### **Routers And The Internet**

- **Router** is a networking device that forwards data packets between computer networks.
- A router is not needed within a **LAN**, it's required **only** when **connecting to the internet**.  
- So **The Internet** is essentially all **LANs** in the world connected into a single, enormous network(simplified).

## **Internet Infrastructure**

### **Packet Travel in the Internet**

- Sending/receiving some data over the Internet, as was previously established, means sending/receiving **packets**. Packets sent by a device travel to the **switch/AP** this device is connected to, from there to a **router**, from the **router** to **POPs(Point Of Presence)**, and from POPs to **IXP (Internet Exchange Point)**, and all the way back to reach another communicational device on the Internet.
- In telecommunications networks, a **node** is either a redistribution point or a communication endpoint(but the definition may vary depending on the context), so any device that's a part of the Internet is a node. 
- A **Point of Presence** is a physical location, often a data center(*a centralized facility equipped with computing and networking resources to store, process, manage, and disseminate large amounts of data.*), where an ISP places network equipment to establish a direct connection with its customers.
-  An **Internet Exchange Point** is a physical location where different Internet Service Providers (ISPs) and networks come together to exchange traffic directly.

### **Types of ISPs**

- There are different types of **ISPs**: local, regional, and national/international. **ISPs** connect through **peering agreements**, exchanging traffic mutually.

### **Routing Tables and Packet Forwarding**

- A **routing table** is a set of rules, often viewed in table format, that's used to determine where data packets are directed from one node to another. In the Internet's redistribution points, a routing table is always implemented.

### **CDNs and WANs**

- Big companies like **Google** optimize communication through **content delivery networks (CDNs)**, whose purpose is to cache and distribute content across strategically placed **servers** worldwide, reducing latency.
- **WAN (Wide Area Network)** is a **network** that extends over a **large geographical area**, connecting multiple local area networks (LANs) or other WANs, and this could include the entire Internet. However, in **specific organizational contexts**, such as a bank or a company, the term "WAN" may be used to describe **their own private network** that **spans multiple locations** but is **distinct from the public Internet**.

<hr>

*This basic Internet overview is of [this video](https://www.youtube.com/watch?v=zN8YNNHcaZc).*
